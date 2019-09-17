<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<tr class="text-uppercase font-size-1 collapse out" id='formDetail'>
                <td scope="row" colspan="5">
<article id="contract" style="z-index: 99; opacity: 1;">
	
	<div class="tit">
		<h2>사무실 임대차 계약서</h2>
		<p>아래 부동산에 대해서 임대인과 임차인은 합의하여 다음과 같이 임대차 계약을 체결한다.</p>
	</div>

	<form name="contractform" method="post" action="contract_ok.asp">
		<input type="hidden" name="c_code" value="비상주사무실">
		<input type="hidden" name="c_month" value="12">
		<input type="hidden" name="c_post" value="false">
		<input type="hidden" name="c_balance" value="70000">
		<input type="hidden" name="c_fax" value="undefined">
		<input type="hidden" name="c_rent" value="600000">
		
			<input type="hidden" name="c_pay_amount" value="730000">
		

		<div class="contractCon">
			<section class="contractSec1">
				<h3 class="tit">[부동산의 표시]</h3>
				<table class="tablStyle style1" align="center" width="1000px;">
					<!-- <caption>부동산의 표시</caption> -->
					<colgroup>
						<col width="">
						<col width="">
						<col width="">
						<col width="">
						<col width="">
					</colgroup>
					<tbody>
						<tr align="center">
							<th scope="row">소재지</th>
							<td colspan="4">서울시 금천구 가산동 549-8</td>
						</tr>
						<tr align="center">
							
							<th scope="row">준공년도</th>
							<td>04/11</td>
							<th scope="row">대지면적</th>
							<td>12084.05</td>
						</tr>
						<tr align="center">
							
							<th scope="row">건축규모</th>
							<td>B2,15</td>
							<th scope="row">건축면적</th>
							<td>3985.47</td>
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
				<table class="tablStyle style1" align="center" width="1000px;">
					<!-- <caption>부동산의 표시</caption> -->
					<colgroup>
						<col width="45%">
						<col width="">
						<col width="">
						<col width="">
					</colgroup>
					<thead>
						<tr align="center">
							<th>항 목</th>
							<th>공급가액</th>
							<th>부가세</th>
							<th>합 계</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="td_center">보증금(최초1회)</td>
							<td class="td_right" id="deposit">70,000원</td>
							<td class="td_right" id="deposit_tax">0원</td>
							<td class="td_right" id="deposit_total">70,000원</td>
						</tr>
						<tr>
							<td class="td_center">월 임대료</td>
							<td class="td_right" id="rent">600,000원</td>
							<td class="td_right" id="rent_tax">60,000원</td>
							<td class="td_right" id="rent_total">660,000원</td>
						</tr>
						
					</tbody>
					<tfoot>
						<tr>
							<td class="td_center">합 계</td>
							<td class="td_right" id="total1"></td>
							<td class="td_right" id="total2"></td>
							<td class="td_right" id="total3">730,000원</td>
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
				
				<div>
					<table class="tablStyle style2 w50">
						<!-- <caption>계약자 정보</caption> -->
						<colgroup>
							<col width="">
							<col width="">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">계약자명</th>
								<td><input type="text" name="c_name" class="input" placeholder="계약자명" required=""></td>
							</tr>
						</tbody>
					</table>
					<table class="tablStyle style2 w50">
						<!-- <caption>계약자 정보</caption> -->
						<colgroup>
							<col width="">
							<col width="">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">연락처</th>
								<td><input type="text" name="c_tel" class="input" placeholder="연락처" required=""></td>
							</tr>
						</tbody>
					</table>
					<table class="tablStyle style2 w100">
						<!-- <caption>계약자 정보 - 이메일</caption> -->
						<colgroup>
							<col width="">
							<col width="">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이메일</th>
								<td><input type="text" name="c_email" class="input" placeholder="이메일" required=""></td>
							</tr>
						</tbody>
					</table>
				</div>
				<h3 class="tit">[보증금반환 계좌정보]</h3>
				<table class="tablStyle style2">
					<!-- <caption>보증금반환 계좌정보</caption> -->
					<colgroup>
						<col width="">
						<col width="">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">은행명</th>
							<td><input type="text" name="c_bank" class="input" placeholder="은행명" required=""></td>
						</tr>
						<tr>
							<th scope="row">예금주</th>
							<td><input type="text" name="c_bank_name" class="input" placeholder="예금주명" required=""></td>
						</tr>
						<tr>
							<th scope="row">계좌번호</th>
							<td><input type="text" name="c_bank_no" class="input" placeholder="계좌번호" required=""></td>
						</tr>
					</tbody>
				</table>
			</section> <!-- // .contractSec2  -->
			<section class="contractSec3">
				<p id="date"></p>
				<div>
					<h3 class="tit">[임차인 정보]</h3>
					<table class="tablStyle style2">
						<!-- <caption>임차인 정보</caption> -->
						<colgroup>
							<col width="">
							<col width="">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름</th>
								<td><input type="text" class="input" name="c_r_name" placeholder="이름"></td>
							</tr>
							<tr>
								<th scope="row">주민번호/사업자번호</th>
								<td><input type="text" class="input" name="c_r_jumin" placeholder="주민번호/사업자번호"></td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td><input type="text" class="input" name="c_r_tel" placeholder="연락처"></td>
							</tr>
							<tr>
								<th scope="row">주소</th>
								<td><input type="text" class="input" name="c_r_address" placeholder="주소"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div>
					<h3 class="tit">[임대인 정보]</h3>
					<table class="tablStyle style1">
						<!-- <caption>임대인 정보</caption> -->
						<colgroup>
							<col width="">
							<col width="">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">이름</th>
								<td class="stamp"><span>빅굿나</span></td>
							</tr>
							<tr>
								<th scope="row">사업자번호</th>
								<td>CM000007</td>
							</tr>
							<tr>
								<th scope="row">연락처</th>
								<td>010-1111-2222</td>
							</tr>
							<tr>
								<th scope="row">이메일</th>
								<td>bigoodna@naver.com</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section> <!-- // .contractSec3  -->
			<section class="contractSec4">
				<a href="javascript:;" id="specialAgreement"><span>[특약 사항]</span></a>
				<div id="specialAgreement_content">
					
					<dl>
						<dt>1. 임대인이 운영하는 홈페이지(www.sgbc.co.kr)상에 기재된 서비스 이용약관에 동의한다.</dt>
					</dl>
					<dl>
						<dt>2. 계약해지를 원하는 경우에는 계약만료 1개월전에 임차인은 임대인에게 통지를 하여야하며 그렇지 않을경우, 재계약은 1개월단위로 자동 갱신된다.</dt>
					</dl>
					<dl>
						<dt>3. 임차인이 다음 사항의 사유가 발생될 경우 별도의 통보없이 계약해지 하며, 이로 인한 일체의 민형사책임을</dt>
                        <dd><span>-</span><span> 임대인에게 제기할 수 없으며 잔여임대료의 반환처리는 배상처리로 갈음한다.</span></dd>
						<dd><span>-</span><span> 임대료 2회이상 미납시 (임차인의 사유로 자동결제가 안될 경우도 포함)</span></dd>
						<dd><span>-</span><span> 사업자 등록 후 3개월이상 사업영위가 없음을 확인한 경우</span></dd>
                        <dd><span>-</span><span> 관할 관청이나 세무서등에서 민원이 다수 발생되었을 경우</span></dd>
                        <dd><span>-</span><span> 부가세, 소득세, 법인세 신고등의 일체의무를 성실히 이행하지 않을 경우</span></dd>
                        <dd><span>-</span><span> 실제 거래사실 없이 세금계산서를 수수하는 행위하였을 경우</span></dd>
					</dl>
					<dl>
						<dt>4. 임차인은 제3자에게 계약상의 권리를 양도하거나 전대할 수 없다.</dt>
					</dl>
					<dl>
						<dt>5. 임차인은 센터 시설물을 이용함에 있어서 선량한 관리자의 주의 의무를 다하여야 하며, 계약종료시 계약목적물에 발생된 손망실, 훼손등이 있을 경우, 자신의 비용으로 이를 원상복구 또는 원상복구를 위한 실비를 보상한다.</dt>
					</dl>
					<dl>
						<dt>6. 음주, 소란, 도난등의 사유로 타 입주사에게 피해를 발생시킨 경우에는, 즉시 퇴거조치에 응한다.</dt>
					</dl>
					<dl>
						<dt>7. 현행법 위반등이 발생된 경우에도 5항과 동일하게 적용된다.</dt>
					</dl>
					
				</div>
			</section> <!-- // .contractSec4  -->
			<!--
			<section class="contractSec5">
				<h3>[전자서명하기]</h3>
				<div id="sign">
					<div class="sign_con"></div>
					<span>이곳에 사인해주세요</span>
				</div>
			</section> --> <!-- // .contractSec5  -->
		</div>
		<div class="btns">
		
			<button type="button" class="btn btn_submit" onclick="PaySubmit()">결제하기</button>
			<button type="button" class="btn btn_cancle">취소하기</button>
		</div>
<script type="text/javascript">
function PaySubmit() {
	document.contractform.action = "contract_payreq.asp";
	window.open("", "PayOneQ결제", "width=480,height=700,scrollbars=no,resize=no");
	document.contractform.target = "PayOneQ결제";
	document.contractform.submit();
}
</script>
</article>
</td>
</tr>