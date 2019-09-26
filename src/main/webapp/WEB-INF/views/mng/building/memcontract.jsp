<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<!DOCTYPE html>
<style>





/* 계약서 */
.contract_bg { display:none;  top:0; right:0; bottom:0; left:0; background-color:rgba(0,0,0,.7); z-index:95; }
#contract_close { display:none;  left:50%; top:300px; margin-left:710px; z-index:99; }
#contract {left:0;right:0;top:300px;max-width:1400px;padding:0 7% 80px;margin:0 auto;background: #fff;z-index:-1;box-sizing:border-box;opacity:0;}
#contract > .tit { margin:70px 0 30px; text-align:center; }
#contract > .tit h2 { margin-bottom:25px; line-height:1em; font-size:40px; color:#ff6600; font-weight:700; }
#contract > .tit p { font-size:20px; color:#222; line-height:1.2em; }

.contractCon { border:2px solid #555; }
.contractCon section { padding:20px 1.5%; border-top:2px solid #222; }
.contractCon .tit { margin:30px 0 20px 0; font-size:20px; font-weight:700; color:#222; }
.contractCon .tit:first-child { margin-top:0; }

.contractCon .tablStyle { font-size:15px; font-weight:300; }
.contractCon dl + .tablStyle { margin-bottom:30px; }
.contractCon .tablStyle.w50 { float:left; width:50%; }
.contractCon .tablStyle.w100 { float:left; width:100%; border-top:none; }
.contractCon .tablStyle.w100 th, .contractCon .tablStyle.w100 td { border-top:none; }
.contractCon .tablStyle th, .contractCon .tablStyle td { padding:13px 0; border:2px solid #555; }
.contractCon .tablStyle th { width:140px; color:#333; font-weight:300; background:#e2e2e2; }
.contractCon .tablStyle td { line-height:1.2em; padding:13px 20px; color:#555; }
.contractCon .tablStyle td.td_center { text-align:center; }
.contractCon .tablStyle td.td_right { text-align:right; }
.contractCon .tablStyle tfoot td, .contractCon .tablStyle.style2 th { background:#ffe1cd; font-weight:500; color:#ff6600; }
.contractCon .tablStyle.style2 td { padding:5px 10px; }
.contractCon .tablStyle .input { width:100%; max-width:400px; height:32px; padding:0 10px; font-size:15px; font-weight:300; color:#555; border:1px solid #aaa; box-sizing:border-box; }
.contractCon .tablStyle .input::-ms-input-placeholder { font-weight:300; color:#555; }
.contractCon .tablStyle .input::placeholder { font-weight:300; color:#555; }

.contractCon dl { margin-bottom:15px; font-size:15px; }
.contractCon dt { margin-bottom:5px; color:#222; }
.contractCon dd { overflow:hidden; line-height:1.5em; color:#555; font-weight:300; }
.contractCon dd span { float:left; width:98%; }
.contractCon dd span:first-child { width:2%; }
.contractCon dd strong { font-weight:300; color:#222; }

.contractCon .contractSec1 { border-top:none; }
.contractCon .contractSec2 div { overflow:hidden; margin-bottom:30px; }
.contractCon .contractSec2 div table:nth-child(2) th { border-left:none; }

.contractCon .contractSec3 { overflow:hidden; }
.contractCon .contractSec3 #date { margin:40px 0; text-align:center; font-size:25px; color:#222; }
.contractCon .contractSec3 div { float:left; width:50%; box-sizing:border-box; }
.contractCon .contractSec3 div:nth-of-type(1) { border-right:5px solid #fff; }
.contractCon .contractSec3 div:nth-of-type(2) { border-left:5px solid #fff; }
.contractCon .contractSec3 .stamp { position:relative; }
.contractCon .contractSec3 .stamp span { position:relative; z-index:1; }
.contractCon .contractSec3 .stamp img {  left:255px; top:0px; /*z-index:-1;*/ }

.contractCon .contractSec4 { padding:0; }
.contractCon .contractSec4 #specialAgreement { display:block; height:48px; line-height:48px; font-size:18px; color:#222; text-align:center; /*border-bottom:2px solid #555;*/ background:#e2e2e2; }
.contractCon .contractSec4 #specialAgreement span { display:inline-block; padding-right:35px; background:url(/img/main/arr_d.png) right center no-repeat; }
.contractCon .contractSec4 #specialAgreement.on span { background-image:url(/img/main/arr_u.png); }
.contractCon .contractSec4 #specialAgreement_content { display:none; padding:20px 1.5%; /*border-bottom:2px solid #555;*/ border-top:2px solid #555; }

.contractCon .contractSec5 { border-top:none; text-align:center; }
.contractCon .contractSec5 h3 { height:48px; line-height:48px; font-size:20px; color:#fff; border:2px solid #ca5100; background:#ff6600; }
.contractCon .contractSec5 #sign { overflow:hidden; position:relative; height:189px; border:2px solid #555; border-top:none; }
.contractCon .contractSec5 #sign .sign_con { height:189px; }
.contractCon .contractSec5 span {  left:0; top:0; width:100%; line-height:189px; font-size:18px; color:#555; font-weight:200; z-index:-1; }

#contract .btns { margin-top:50px; text-align:center; }
#contract .btns .btn { height:60px; margin:0 5px; font-size:17px; font-weight:700; color:#fff; border:none; cursor:pointer; }
#contract .btns .btn_submit { width:20%; background:#ff2400; }
#contract .btns .btn_cancle { width:11.5%; background:#555555; }



/* 계약서 뷰페이지 */
#printWrap { width:21cm; }
#contract.contract_view { position:static; opacity:1; padding:0; }
#contract.contract_view > .tit { margin-top:0; }

/*계약전 필독사항*/
@media screen and (min-width:500px) {  
	.pre_contract{
		width: 50%;
		margin: 0px auto !important;
		margin-top: 70px !important;
		text-align: left !important;
	}
}


@media screen and (max-width:1400px) {  
	/* mainVisual */
	#mainVisual .slick-arrow { display:none !important; }

	/*section2*/
	#main_section2_slider li img { display:none !important; }

	/* section3 */
	.sec3Con dl { padding:0 50px; }

	/* section6 */
	.optionChoice .service { width:25%; }
	.optionChoice .cost { width:15%; }
	.optionChoice .content { width:60%; }
	#product_list li { float:none; display:inline-block;margin:0 6px 12px; }

	/* 계약서 */
	#contract_close { top:255px; left:auto; right:10px; margin-left:0; }

	/* map */
	/*.map .txt { left:auto; right:0; margin-left:0; }*/
}
@media screen and (max-width:1200px) {
	.contractCon .contractSec3 .stamp img { left:auto; right:5px; top:auto; bottom:0; }
}

@media screen and (max-width:780px) {  
	

	/*계약서*/
	#contract { padding:0 20px 80px; }
	.contractCon .tablStyle { font-size:13px; }
	.contractCon .tablStyle.w50 { float:left; width:100%; }
	.contractCon .tablStyle th { width:85px; }
	.contractCon dd span { width:96%; }
	.contractCon dd span:first-child { width:4%; }
	.contractCon .contractSec2 div { overflow:hidden; }
	.contractCon .contractSec2 div table:nth-child(2) th, .contractCon .contractSec2 div table:nth-child(2) td { border-left:2px solid #555; border-top:none; }
	.contractCon .contractSec3 div { width:100%; margin:0 0 20px; border:none !important; }
	.contractCon .contractSec3 div:last-child { margin-bottom:0; }
	.contractCon .tablStyle td { padding:13px 10px; }
	.contractCon .contractSec3 .stamp img { left:220px; right:auto; }

	#contract .btns .btn_submit { width:40%; background:#ff2400; }
	#contract .btns .btn_cancle { width:30%; background:#555555; }

}


@media screen and (max-width:480px) {  
	

	/*계약서*/
	#contract { padding:0 3% 50px; }
	#contract > .tit { margin:50px 0 30px; }
	#contract > .tit h2 { margin-bottom:25px;font-size:30px;  }
	#contract > .tit p { font-size:16px; color:#222; }

	.contractCon section { padding:20px 10px; }

	.contractCon .tablStyle th { width:70px; }
	.contractCon .tablStyle td { padding:13px 5px; }
	.contractCon .tablStyle.style2 td { padding:5px; }

	.contractCon .tit { font-size:16px; }
	.contractCon dl {  font-size:13px; }
	.contractCon dd span { width:95%; }
	.contractCon dd span:first-child { width:5%; }

	.contractCon .contractSec4 #specialAgreement { font-size:16px; }
	.contractCon .contractSec5 h3 { font-size:16px; }
	.contractCon .contractSec3 .stamp img { left:auto; right:5px; }

}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<div class="table-responsive-md u-datatable" id="printWrap">
              
    
                
		
          	<div >
            <div class="tit">
            	<h2>사무실 임대차 계약서</h2>
				<p>아래 부동산에 대해서 임대인과 임차인은 합의하여 다음과 같이 임대차 계약을 체결한다.</p>
			</div>

			<div class="contractCon">
			<section class="contractSec1">
				<h3 class="tit">[부동산의 표시]</h3>
				<table class="tablStyle style1" style="width: 100%">
					<!-- <caption>부동산의 표시</caption> -->
					<colgroup>
						<col width="">
						<col width="">
						<col width="">
						<col width="">
					</colgroup>
					<tbody>
						<tr align="center">
							<th scope="row">소재지</th>
							<td colspan="4" id="b_area1 + b_area2 + b_address">${roomVO.b_area1} ${roomVO.b_area2} ${roomVO.b_address}</td>
						</tr>
						<tr align="center">	
							<th scope="row">준공년도</th>
							<td id="b_year">${roomVO.b_year}</td>
							<th scope="row">대지면적</th>
							<td id="b_landarea">${roomVO.b_landarea}</td>
						</tr>
						<tr align="center">
							<th scope="row">건축규모</th>
							<td id="b_buildscale">${roomVO.b_buildscale}</td>
							<th scope="row">건축면적</th>
							<td id="b_buildarea">${roomVO.b_buildarea}</td>
						</tr>
					</tbody>
				</table>
			</section> <!-- // .contractSec1  -->
			<section class="contractSec2">
				<h3 class="tit">[계약내용]</h3>
				<dl>
					<dt>제1조 [보증금과 지급시기]</dt>
					<dd>임대인과 임차인은 위 임대차 부동산에 관하여 보증금과 월 임대료에 대해 아래와 같이 합의한다.</dd>
				</dl>
				<table class="tablStyle style1" style="width: 100%">
					<colgroup>
						<col width="45%">
						<col width="55%">
					</colgroup>
					<thead>
						<tr align="center">
							<th>항 목</th>
							<th>공급가액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="td_center">보증금 (최초 1회)</td>
							<td class="td_right" id="r_price">${roomVO.r_deposit}</td>
						</tr>
						<tr>
							<td class="td_center">월 임대료</td>
							<td class="td_right" id="r_deposit">${roomVO.r_price}</td>
						</tr>
						<tr>
							<td class="td_center">권리금</td>
							<td class="td_right" id="r_premium">${roomVO.r_premium}</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td class="td_center">합 계</td>
							<td class="td_right" id="r_price + r_deposit">${roomVO.r_price + roomVO.r_deposit}</td>
						</tr>
					</tfoot>
				</table>
				
				<dl>
					<dt>제2조 [존속기간]</dt>
					<dd>임대인은 위 부동산을 임대차 목적대로 사용 수익할 수 있는 상태로  까지 임차인에게 인도하며, 임대차 기간은 인도일로부터 <strong> 까지</strong>로 한다.</dd>
				</dl>
				<dl>
					<dt>제3조 [용도변경 및 전대 등]</dt>
					<dd>임차인은 임대인의 동의 없이는 위 부동산의 용도나 구조 등을 변경하거나 전대,임차권 양도 또는 담보제공을 하지 못하며 임대차 목적 이외의 용도에 사용할 수 없다.</dd>
				</dl>
				<dl>
					<dt>제4조 [계약의 해지]</dt>
					<dd><span>①</span><span> 임차인이 2회 이상 차임의 지급을 연체하거나 제3조를 위반했을 때는 임대인은 본 계약을 해지할 수 있다.</span></dd>
					<dd><span>②</span><span> 중도해지시 사용기간동안 정상가격 금액으로 정산후 반환한다.</span></dd>
					<dd><span>③</span><span> 임대차 계약 연장을 안하고 무단 전출하거나 또는 본 계약 종료후 사업자 주소지 이전 정정신고를 안했을경우 관할세무서로 부터 직권폐업될 수 있다.</span></dd>
				</dl>
				<dl>
					<dt>제5조 [계약의 종료] </dt>
					<dd><span>①</span><span> 임대차 계약이 종료된 경우 임차인은 위 부동산을 원상으로 회복하여 임대인에게 반환한다.</span></dd>
					<dd><span>②</span><span> 제1항의 경우, 임대인은 보증금을 임차인에게 반환하고 연체임대료 또는 손해배상 금액이 있을 때는 이들을 제하고 그 잔액을 반환한다.</span></dd>
					<dd><span>③</span><span> 임차인이 차임의 지급을 미루거나 지급이 안되었을 경우 무단으로 임대차 부동산의 주소지를 사용시 부가가치세법 8조 및 시행령 15조에 따라 세무서에 직권폐업 신청이 진행되며 이로인한 불이익에 대한  책임은 임차인에게 있다.</span></dd>
				</dl>
				<dl>
					<dt>제6조 [계약연장] </dt>
					<dd>계약 종료일 1개월전에 재계약여부를 결정하여, 임대인에게 통보하여야 하며 연장합의후 월 임대료에 대해 임차인이 동의하에 최초 결제수단을 이용하여 매월 자동연장된다.</dd>
					<dd>(자동연장시 1개월 정상요금으로 연장됨)</dd>
				</dl>
				<dl>
					<dt>제7조 [특약사항]</dt>
					<dd>위에 언급되지 않은 사항은 특약으로 갈음한다.</dd>
				</dl>
				
				<table class="tablStyle style1" style="width: 100%">
					<colgroup>
						<col width="45%">
						<col width="55%">
					</colgroup>
					<tbody>
						<tr align="center">
							<th>계약자명</th>
							<td id="rt_name">${roomVO.rt_name}</td>
						</tr>

						<tr align="center">
							<th class="td_center">주민번호/사업자번호</th>
							<td id="rt_businessNum">${roomVO.rt_businessNum}</td>
						</tr>
					
						<tr align="center">
							<th class="td_center">연락처</th>
							<td id="rt_mobile">${roomVO.rt_mobile}</td>
						</tr>

						<tr align="center">
							<th class="td_center">이메일</th>
							<td id="rt_email">${roomVO.rt_email}</td>
						</tr>
					</tbody>
				</table>
				<h3 class="tit">[보증금반환 계좌정보]</h3>
				<table class="tablStyle style1" style="width: 100%">
					<!-- <caption>보증금반환 계좌정보</caption> -->
					<colgroup>
						<col width="45%">
						<col width="55%">
					</colgroup>
					<tbody>
						<tr align="center">
							<th>지갑주소</th>
							<td id="rt_address">${roomVO.rt_address}</td>
						</tr>
					</tbody>
				</table>
			</section> <!-- // .contractSec2  -->
			<section class="contractSec3">
				<h3 class="tit">[임대인 정보]</h3>
				<table class="tablStyle style1" style="width: 100%">
					<colgroup>
						<col width="45%">
						<col width="55%">
					</colgroup>
					<tbody>
						<tr align="center">
							<th scope="row">이름</th>
							<td id="name">${roomVO.name}</td>
						</tr>
						<tr align="center">
							<th scope="row">연락처</th>
							<td id="hp">${roomVO.hp}</td>
						</tr>
						<tr align="center">
							<th scope="row">이메일</th>
							<td id="email">${roomVO.email}</td>
						</tr>
					</tbody>
				</table>
			</section> <!-- // .contractSec3  -->
			</div>
          	</div>
		
              
        	</div> 
        	</div> 
</body>
</html>
<%@ include file="../../common/footer.jsp" %>