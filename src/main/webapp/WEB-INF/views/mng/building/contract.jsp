<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../common/setting.jsp" %>
<!DOCTYPE html>
<style>



/* section common */
.con_tit { padding-top:60px; text-align:center; }
.con_tit h3 { margin-bottom:20px; font-size:32px; font-weight:500; color:#ff8f16; }
.con_tit p { font-size:25px; line-height:1.3em; color:#403c3a; font-weight:300; }
.con_tit > span { display:inline-block; font-size:17px; margin-top:12px; font-weight:250; color:#403c3a; }

/* section1 */
.section1 { padding:0px 0 120px; text-align:center; background:#f2f2f2; }
.section1 .con_tit p { font-size:21px; color:#49433c; }

.section1 .txt { margin:40px 0 60px; height:300px; color:#fff; background:url(/img/main/bg_section1.jpg) center no-repeat #000; }
.section1 .txt dt { padding:105px 0 15px; font-size:21px; font-weight:300; }
.section1 .txt dd { line-height:1.5em; font-size:18px; font-weight:200; }
.section1 .txt dd span { display:block; }

.section1 .list p { margin-bottom:15px; font-size:25px; color:#333; font-weight:500; }
.section1 .list > span { font-size:18px; color:#555; font-weight:250; }

.section1 .list ul { overflow:hidden; max-width:1400px; margin:5px auto 0; }
.section1 .list li { position:relative; float:left; width:25%; height:235px; padding-top:35px; font-weight:250; }
.section1 .list li:after { content:''; display:block; position:absolute; right:0; bottom:15px; width:1px; height:182px; background:#dbdbdb; }
.section1 .list li.list04:after, .section1 .list li.list08:after, .section1 .list li.list12:after { display:none; }
.section1 .list li .img { display:inline-block; width:120px; height:120px; border:7px solid #f2f2f2; background-color:#fff; background-position:center; background-repeat:no-repeat; border-radius:50%; }
.section1 .list li.list01 .img { background-image:url(/img/main/icon_section1_01.png); }
.section1 .list li.list02 .img { background-image:url(/img/main/icon_section1_02.png); }
.section1 .list li.list03 .img { background-image:url(/img/main/icon_section1_03.png); }
.section1 .list li.list04 .img { background-image:url(/img/main/icon_section1_04.png); }
.section1 .list li.list05 .img { background-image:url(/img/main/icon_section1_05.png); }
.section1 .list li.list06 .img { background-image:url(/img/main/icon_section1_06.png); }
.section1 .list li.list07 .img { background-image:url(/img/main/icon_section1_07.png); }
.section1 .list li.list08 .img { background-image:url(/img/main/icon_section1_08.png); }
.section1 .list li.list09 .img { background-image:url(/img/main/icon_section1_09.png); }
.section1 .list li.list10 .img { background-image:url(/img/main/icon_section1_10.png); }
.section1 .list li.list11 .img { background-image:url(/img/main/icon_section1_11.png); }
.section1 .list li.list12 .img { background-image:url(/img/main/icon_section1_12.png); }
.section1 .list li dt { line-height:55px; font-size:33px; color:#ff6600; }
.section1 .list li dd { line-height:1.3em; color:#555; font-size:16px; }
.section1 .list li dd span { display:block; }
.section1 .list li:hover .img { border-color:#fff; background-color:#ff6600; }
.section1 .list li.list01:hover .img { background-image:url(/img/main/icon_section1_01_ov.png); }
.section1 .list li.list02:hover .img { background-image:url(/img/main/icon_section1_02_ov.png); }
.section1 .list li.list03:hover .img { background-image:url(/img/main/icon_section1_03_ov.png); }
.section1 .list li.list04:hover .img { background-image:url(/img/main/icon_section1_04_ov.png); }
.section1 .list li.list05:hover .img { background-image:url(/img/main/icon_section1_05_ov.png); }
.section1 .list li.list06:hover .img { background-image:url(/img/main/icon_section1_06_ov.png); }
.section1 .list li.list07:hover .img { background-image:url(/img/main/icon_section1_07_ov.png); }
.section1 .list li.list08:hover .img { background-image:url(/img/main/icon_section1_08_ov.png); }
.section1 .list li.list09:hover .img { background-image:url(/img/main/icon_section1_09_ov.png); }
.section1 .list li.list10:hover .img { background-image:url(/img/main/icon_section1_10_ov.png); }
.section1 .list li.list11:hover .img { background-image:url(/img/main/icon_section1_11_ov.png); }
.section1 .list li.list12:hover .img { background-image:url(/img/main/icon_section1_12_ov.png); }
.section1 .list li:hover dt { color:#2d2016; }
.section1 .list li:hover dd { color:#2d2016; }


/* section2 */
.section2 { position:relative; height:730px; background:url(/img/main/bg_section2.jpg) center no-repeat; }
.section2 .con_tit h3 { color:#fff; }
.section2 .con_tit p { color:#fff; }
.section2 .con_tit > span { color:#fff; }
#main_section2_slider { position:relative; /*max-width:1400px; margin:105px auto 0;*/margin-top:105px; }
#main_section2_slider li { display:table; width:560px; height:410px; margin:0 20px; color:#fff; background-size:cover; }
#main_section2_slider li.num1 { background-image:url(/img/main/img_section2_1.jpg); }
#main_section2_slider li.num2 { background-image:url(/img/main/img_section2_2.jpg); }
#main_section2_slider li.num3 { background-image:url(/img/main/img_section2_3.jpg); }
#main_section2_slider .slick-dots { position:absolute; left:0; right:0; top:-33px; text-align:center; }
#main_section2_slider .slick-dots li { display:inline-block; width:12px; height:12px; margin:0 5px; }
#main_section2_slider .slick-dots li button { display:block; width:12px; height:12px; padding:0; border:none; background:#ddd; border-radius:50%; overflow:hidden; text-indent:-5000px; cursor:pointer; }
#main_section2_slider .slick-dots li.slick-active button { background:#ff8f16; }

#main_section2_slider li > div { display:table-cell; vertical-align:middle; text-align:center; color:#fff; }
#main_section2_slider li dt { font-size:20px; font-weight:250; }
#main_section2_slider li dt strong { display:block; margin-bottom:20px; font-weight:250; font-size:30px; line-height:1em; }
#main_section2_slider li dd { display:none; }
#main_section2_slider li .more { display:block; width:48px; height:45px; line-height:45px; margin:28px auto 0; font-weight:200; font-size:25px; border:1px solid #fff; opacity:.5; }

#main_section2_slider li.slick-current { display:block; background:#ff8f16; }
#main_section2_slider .slick-current > div { display:block; padding:0 69px; text-align:left; }
#main_section2_slider .slick-current dt { overflow:hidden; height:90px; padding-top:45px; font-size:30px; border-bottom:1px solid rgba(255,255,255,.2); }
#main_section2_slider .slick-current dt strong { float:left; margin:0; font-size:45px; font-weight:500; opacity:.3; }
#main_section2_slider .slick-current dt strong:after { content:'.'; }
#main_section2_slider .slick-current dt em { float:left; line-height:1.2em; margin-top:5px; }
#main_section2_slider .slick-current dt em span { display:block; }
#main_section2_slider .slick-current dd { display:block; padding-top:35px; font-weight:200; letter-spacing:-0.03em; font-size:17px; }
#main_section2_slider .num3.slick-current dd { padding-top:25px; }
#main_section2_slider .slick-current dd p { margin-bottom:8px; line-height:1.2em; }
#main_section2_slider .num1.slick-current dd p { line-height:1.7em; }
#main_section2_slider .slick-current dd p span { display:block; }
#main_section2_slider .slick-current .more { display:none; }


/* section3 */
.section3 { padding-bottom:60px; background:#f2f2f2; }
.section3 .con_tit h3 { color:#333; }
.sec3Con { overflow:hidden; max-width:1280px; margin:70px auto 0; }
.sec3Con > div { float:left; width:50%; }
.sec3Con div > p { height:40px; font-size:17px; font-weight:250; color:#787571; }
.sec3Con p span { color:#ff8f16; }
.sec3Con .left img { width:100%; height:auto; }
.sec3Con .left p { line-height:57px; }
.sec3Con .right > p { text-align:right; }
.sec3Con dl { height:460px; padding:0 80px; background:#38332c; color:#fff; }
.sec3Con dt { padding:72px 0 34px; line-height:1.2em; font-size:30px; color:#ff8f16; font-weight:300; border-bottom:1px solid #4c4842; }
.sec3Con dd { padding-top:35px; font-size:17px; font-weight:200; line-height:1.7em; }


/* section4 */
.section4 { padding-bottom:120px; }
.img_list { margin-top:48px; }
.img_list ul { overflow:hidden; max-width:1760px; margin:0 auto; }
.img_list li { float:left; position:relative; width:20%; height:235px; }
.img_list li img { width:100%; height:100%; }
.img_list .over { display:none; position:absolute; left:0; top:0; bottom:0; width:100%; height:100%; text-align:center; background:rgba(0,0,0,.7); }
.img_list li:hover .over { display:table; }
.img_list .over p { display:table-cell; vertical-align:middle; color:#fff; font-size:18px; font-weight:300; text-shadow:0 0 3px rgba(0,0,0,.5); }
.img_list .over p span { display:block; margin-top:10px; font-size:16px; font-weight:200; }

.lb-image, .lb-outerContainer { width:100% !important; height:auto !important; max-width:1000px !important; box-sizing:border-box; }

/* section5 */
.section6 { height:950px; background:url(/img/main/bg_section5.jpg); }
.section6 .tab { padding-top:130px; text-align:center; }
.section6 .tab a { display:inline-block; margin:0 18px; padding-bottom:3px; color:#fff; font-size:17px; font-weight:250; border-bottom:2px solid transparent; }
.section6 .tab a.on, .section5 .tab a:hover { color:#ff8f16; border-color:#ff8f16; }
.section6 .con_tit { padding-top:42px; }
.section6 .con_tit p { color:#fff; }
.section6 .con_tit span { color:#fff; }

#sec5Con { max-width:1200px; margin:18px auto 0; border-top:1px solid #ff8f16; }
#sec5Con ul { overflow:hidden; }
#sec5Con li { float:left; width:100%; display:table; table-layout:fixed; border-bottom:1px solid #333; }
#sec5Con li.w50 { width:50%; }
#sec5Con li > label { display:table-cell; width:140px; padding-left:20px; font-size:16px; font-weight:250; color:#ccc; vertical-align:middle; box-sizing:border-box; }
#sec5Con li > label span { color:#ff8f16; }
#sec5Con li > p { display:table-cell; padding:14px 33px 14px 0; vertical-align:middle; }
#sec5Con li input { height:32px; padding:0 10px; font-weight:250; font-size:16px; border:1px solid #ccc; box-sizing:border-box; }
#sec5Con .inputSize1 { width:100%; }
#sec5Con .inputSize2 { width:240px; }
#sec5Con .inputSize3 { width:745px; }
#sec5Con textarea { width:100%; height:100px; padding:10px; font-weight:250; font-size:16px; border:1px solid #ccc; box-sizing:border-box; }
#sec5Con .filebox label { display:inline-block; margin-left:6px; width:160px; height:30px; line-height:30px; text-align:center; font-size:15px; font-weight:300; vertical-align:middle; border:1px solid #e4e4e4; background:#e4e4e4; cursor:pointer; }
#sec5Con .filebox .formobile { display:none; }
#sec5Con .btns { margin-top:38px; text-align:center; }
#sec5Con .btns .btn { display:inline-block; width:240px; height:48px; margin:0 5px; padding:0; line-height:48px; font-size:16px; font-weight:250; color:#fff; vertical-align:middle; border:none; border-radius:48px; cursor:pointer; }
#sec5Con .btns .btn_submit { background:url(/img/main/btn_submit.png) repeat-x; }
#sec5Con .btns .btn_cancle { background:url(/img/main/btn_cancle.png) repeat-x; }


/* section6 */
.section5 { padding-bottom:85px; text-align:center; background:#f2f2f2; }
.sec6Con1 { overflow:hidden; max-width:1340px; margin:30px auto 48px; }
.sec6Con1 li { float:left; position:relative; width:16.41%; padding:18px 0; margin-left:0.29%; line-height:1.3em; font-size:16px; color:#fff; }
.sec6Con1 li.list1 { margin-left:0; background:#7f7f7f; }
.sec6Con1 li.list2 { background:#6f6f6f; }
.sec6Con1 li.list3 { background:#5b5b5b; }
.sec6Con1 li.list4 { background:#525252; }
.sec6Con1 li.list5 { background:#464646; }
.sec6Con1 li.list6 { background:#ff8f16; }
.sec6Con1 li:after { content:''; display:block; position:absolute; left:100%; top:50%; margin-top:-6px; width:4.54%; height:12px; background:url(/img/main/arr_section6_1.jpg); background-size:100% 100%; z-index:1; }
.sec6Con1 li.list2:after { background-image:url(/img/main/arr_section6_2.jpg); }
.sec6Con1 li.list3:after { background-image:url(/img/main/arr_section6_3.jpg); }
.sec6Con1 li.list4:after { background-image:url(/img/main/arr_section6_4.jpg); }
.sec6Con1 li.list5:after { background-image:url(/img/main/arr_section6_5.jpg); }
.sec6Con1 li.list6:after { display:none; }
.sec6Con1 li span { display:block; }

.main_product { max-width:1400px; margin:0 auto; }
#main_pSelect { width:318px; height:48px; line-height:48px; margin:0 auto; font-size:20px; color:#222; border:1px solid #ccc; background:url(/img/main/select.png) 90% center no-repeat #fff; cursor:pointer; box-sizing:border-box; }
#main_pSelect.on { background-image:url(/img/main/select_on.png); }
#main_pSelect_option { margin-bottom:50px;/*display:none; position:absolute; left:20px; right:20px; width:318px; margin:0 auto; border:1px solid #ccc; border-top:none; background:#fff; box-sizing:border-box;*/ }
#main_pSelect_option label { /*display:block; padding:10px 0; font-size:15px;*/ display:inline-block; position:relative; margin:0 30px; /*padding-left:20px;*/ line-height:1em; font-size:22px; font-weight:500; color:#333; font-weight:300; }
/*
#main_pSelect_option label:before { content:''; display:block; position:absolute; left:0; top:50%; width:13px; height:13px; margin-top:-6px; border:1px solid #333; border-radius:50%; }
#main_pSelect_option label:after { content:''; display:none; position:absolute; left:4px; top:50%; width:7px; height:7px; margin-top:-2px; background:#333; border-radius:50%; }
#main_pSelect_option label:hover, #main_pSelect_option label.on { color:#ff6300; }
#main_pSelect_option label:hover:after, #main_pSelect_option label.on:after { display:block; }
*/
.main_product .txt { margin-top:18px; font-size:18px; font-weight:250; color:#555; }

.optionProduct { margin-top:20px; }
.optionProduct > p { padding-left:15px; line-height:29px; text-align:left; font-size:20px; color:#222; background:url(/img/main/option_tit.png) left center no-repeat; }
.optionChoice { /*overflow:hidden;*/ margin-top:12px; border-top:2px solid #433f3f; }

.optionChoice table { text-align:left; box-sizing:border-box; }
.optionChoice th { padding:17px 0; text-align:center; font-size:17px; font-weight:300; color:#fff; border-left:1px solid #ccc; background:#ff6300; }
.optionChoice th:first-child { border-left:none; }
.optionChoice td { height:70px; padding:10px 20px; font-size:15px; color:#555; font-weight:250; border:1px solid #ccc; background:#fff; }

.optionChoice dl { float:left; width:33.32%; text-align:left; }
.optionChoice dt { padding:17px 0; text-align:center; font-size:17px; color:#fff; border-left:1px solid #ccc; background:#ff6300; }
.optionChoice .service dt { border-left:none; }
.optionChoice dd { height:70px; line-height:70px; padding:0 20px; font-size:15px; color:#555; font-weight:250; box-sizing:border-box; border:1px solid #ccc; border-top:none; border-right:none; background:#fff; }
.optionChoice dd:first-child { height:53px; line-height:53px; border-top:1px solid #ccc; }
.optionChoice .content dd { border-right:1px solid #ccc; }
.optionChoice .content dd:last-child { padding:13px 20px; line-height:1.4em; }

#product_list { margin-top:55px; }
#product_list .products { display:none; }
#product_list #product2 { display:block; }
#product_list #product1 { font-size:25px; font-weight:300; line-height:1.3em; color:#222; }
#product_list #product1 > div { margin-top:20px; }
#product_list #product1 p { display:inline-block; }
#product_list #product1 p:first-child { margin-right:30px; }
#product_list #product1 a { line-height:1; font-size:45px; font-weight:250; color:#ff6600; }
#product_list ul { overflow:hidden; }
#product_list li { float:left; position:relative; width:270px; height:340px; margin:0 0 12px 12px; padding:10px; background:#fff; box-sizing:border-box; }
#product_list li:first-child { margin-left:0; }
#product_list li dl { height:318px; border:1px solid transparent; }
#product_list li dt { display:inline-block; padding:27px 0 10px; font-size:22px; color:#ff6600; font-weight:700; border-bottom:2px solid #ff6600; }
#product_list li dd p { margin-top:20px; line-height:1.7em; font-size:17px; color:#403c3a; font-weight:250; }
#product_list li dd p:first-child { margin-top:15px; }
#product_list .no_discont dd p { margin-top:29px; }
#product_list .no_discont dd p:first-child { margin-top:35px; }
#product_list li dd p span { display:block; }
#product_list li dd p:last-child span:first-child { font-weight:400; font-size:18px; }
#product_list li dd p span b { font-weight:400; }
#product_list #product2 li dd p span b { color:#f00 !important; }
#product_list li dd p span del { color:#ccc; }
#product_list li dd p span em { font-size:22px; color:#ff8f16; font-weight:700; }
#product_list li dd p span i { font-weight:400; font-style:normal; }
#product_list .btn_payment { position:absolute; left:26px; bottom:28px; width:218px; height:45px; color:#fff; font-weight:300; font-size:16px; border:none; background:url(/img/main/btn_bg.png) 90% center no-repeat #777777; cursor:pointer; }
#product_list .notWork .btn_payment { cursor:no-drop; }
#product_list .discount { position:absolute; left:0; top:0; display:block; width:105px; height:105px; padding:13px; text-align:left; color:#feffda; font-size:17px; background:url(/img/main/discount.png); box-sizing:border-box; }
#product_list li:hover { background:#433f3f; }
#product_list li:hover dl { border-color:#5f5c5c; }
#product_list li:hover dd p { color:#fff; }
#product_list li .btn_payment:hover { background-color:#ff6600; }
#product_list li.notWork:hover { background:#fff; }
#product_list li.notWork:hover dl { border-color:transparent; }
#product_list li.notWork:hover dd p { color:#403c3a; }
#product_list li.notWork .btn_payment:hover { background-color:#777; }


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

/* map */
.map { background:#f2f2f2; }
.map .inner { position:relative; width:90%; max-width:1400px; margin:0 auto; }
.map .root_daum_roughmap { width:100%; height:680px; padding:0; border:none; }
.map .root_daum_roughmap .wrap_map { height:100%; }
.map .map_border { display:none; }
.map .txt { position:absolute; right:20px; top:50%; width:400px;-webkit-transform:translateY(-50%); -ms-transform:translateY(-50%); transform:translateY(-50%); z-index:99; }
.map .txt dl { padding:58px 10% 38px; background:rgba(51,48,47,.9); box-sizing:border-box; }
.map .txt dt { padding-bottom:33px; margin-bottom:45px; font-size:26px; font-weight:700; color:#ff6600; border-bottom:1px solid rgba(255,255,255,.15); }
.map .txt dd > div { margin-bottom:20px; }
.map .txt dd h4 { margin-bottom:10px; font-size:16px; font-weight:500; color:#f1f1f1; }
.map .txt dd p { font-size:15px; color:#ccc; line-height:1.46em; font-weight:100; letter-spacing:-0.04em; }
.map .txt dd p span { display:block; position:relative; padding-left:10px; }
.map .txt dd p span:before { content:'·'; display:block;  left:0; top:0; }
.map .txt dd p span + span { margin-top:5px; }


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

@media screen and (max-width:1000px) {  
	/* mainVisual */
	#mainVisual .txt { margin-top:-95px; }
	#mainVisual .txt h3 { margin-bottom:25px; font-size:40px; }
	#mainVisual .txt p { font-size:18px; }
	#mainVisual .slick-dots { top:auto; margin-top:0; bottom:20px; }

	/* section common */
	.con_tit { padding-top:60px; }
	.con_tit h3 { margin-bottom:16px; font-size:25px; }
	.con_tit p { font-size:16px; }
	.con_tit > span { font-size:16px; }

	/*section1*/
	.section1 .list li dd { font-size:14px; }

	/*section2*/
	.section2 { height:auto; padding:0 0 65px; background-size:cover; }
	#main_section2_slider { margin-top:50px; padding:0 20px; }
	#main_section2_slider li { width:100%; height:auto; margin:0; padding-bottom:40px; }

	#main_section2_slider li img { display:block !important; width:100%; height:auto; }

	#main_section2_slider .slick-current > div { padding:0; }
	#main_section2_slider .slick-current dl { height:260px; padding:0 20px; }
	#main_section2_slider .slick-current dt { display:table-cell; padding-top:0; vertical-align:middle; }
	#main_section2_slider .slick-current dt em span { display:inline; }

	/* section3 */
	.sec3Con dl { height:auto; padding:50px; }
	.sec3Con dt { padding:0 0 24px; font-size:25px; }
	.sec3Con dd { padding-top:25px; }

	/* section4 */
	.section4 { padding-bottom:50px; }
	.img_list { margin-top:20px; position:relative; }
	.img_list ul { padding:0 20px; }
	.img_list li { width:100%; height:auto; }
	.img_list li img { height:auto; }
	.img_list .over { display:block; position:static; height:auto; margin-top:20px; background:none; }
	.img_list li:hover .over { display:block; }
	.img_list .over p { display:block; color:#333; font-size:17px; text-shadow:none; }
	.img_list .over p span { font-size:15px; margin-top:5px; font-weight:250; }
	.img_list .slick-arrow { top:50%; width:40px; height:40px; margin-top:-42px; border:none; border-radius:50%; overflow:hidden; text-indent:-5000px; z-index:1; cursor:pointer; }
	.img_list .slick-prev { left:30px; background:url(/img/main/imgBoard_prev.png) center no-repeat rgba(0,0,0,.7); }
	.img_list .slick-next { right:30px; background:url(/img/main/imgBoard_next.png) center no-repeat rgba(0,0,0,.7); }

	/* section5 */
	#sec5Con li > label { width:13%; }
	#sec5Con li.w50 > label { width:26%; }
	#sec5Con .inputSize2 { width:240px; }
	#sec5Con .inputSize3 { width:100%; max-width:745px; }

	/* section6 */
	.sec6Con1 li { font-size:14px; }
	.optionChoice th { font-size:15px; }
	.optionChoice td { font-size:13px; padding:10px; }
	.optionChoice td:nth-child(1), .optionChoice th:nth-child(1) { width:170px; }
	.optionChoice td:nth-child(2), .optionChoice th:nth-child(2) { width:80px; }
	/*
	.optionProduct .optionChoice dl { width:100%; overflow:hidden; padding:20px; background:#fff; border:1px solid #ccc; border-top:none; box-sizing:border-box; }
	.optionProduct .optionChoice .service { padding:0; }
	.optionProduct .optionChoice .cost { border-bottom:none; }
	.optionChoice dt { padding:0 0 10px; background:none; text-align:left; color:#ff6300; border:none; }
	.optionChoice .service dt { padding:17px 0; text-align:center; color:#fff; background:#ff6300; }
	.optionChoice dd { height:auto; line-height:1.2em; padding:0; border:none; }
	.optionChoice .service dd { float:left; padding:20px; }
	.optionChoice dd:first-child { height:auto; line-height:1.2em; border-top:1px solid #ccc; }
	.optionChoice .tab dd:last-child { display:none; }
	.optionChoice .content dd { border-right:none; }
	.optionChoice .content dd:last-child { padding:0; }
	*/

	/*.map .inner { margin:0 10px; }*/
}

@media screen and (max-width:780px) {  
	/* mainVisual */
	#mainVisual li { overflow:hidden; }
	#mainVisual img { width:auto; height:500px; }
	#mainVisual .txt { margin-top:-65px; }
	#mainVisual .txt h3 { margin-bottom:10px; font-size:25px; }
	#mainVisual .txt p { font-size:16px; }
	#mainVisual .txt p span { display:inline; }

	/*section1*/
	.section1 { padding:10px 0 60px; }
	.section1 .con_tit { margin-bottom:40px; }
	.section1 .con_tit p { font-size:16px; }

	.section1 .txt { display:table-cell; height:220px; background-size:cover; vertical-align:middle; }
	.section1 .txt dt { padding:0 0 15px; }
	.section1 .txt dd { font-size:16px; }
	.section1 .txt dd span { display:inline; }

	.section1 .list p { margin:40px 0 15px; font-size:22px; line-height:1.2em; }
	.section1 .list > span { font-size:16px; }
	.section1 .list li { width:50%; height:235px; }
	.section1 .list li:after { display:none; }
	.section1 .list li dt { font-size:30px; }
	.section1 .list li dd span { display:inline; }

	/*section2*/
	#main_section2_slider { padding:0 10px; }
	#main_section2_slider .slick-current dl { height:320px; }
	#main_section2_slider .slick-current dt { font-size:20px; height:70px; }
	#main_section2_slider .slick-current dt strong { float:none; display:inline-block; margin-right:4px; font-size:20px; opacity:1; }
	#main_section2_slider .slick-current dt em { float:none; display:inline; }
	#main_section2_slider .slick-current dt em span { display:inline; }
	#main_section2_slider .slick-current dd { padding-top:20px; font-size:16px; }
	#main_section2_slider .slick-current dd p span { display:inline; }

	/* section3 */
	.section3 { padding-bottom:0; background:#fff; }
	.sec3Con .left { display:none; }
	.sec3Con .right { width:100%; background:url(/img/main/img_section3.jpg) center / cover no-repeat; }
	.sec3Con .right > p { display:none; }
	.sec3Con dl { background:rgba(56,51,44,.9); }
	.sec3Con dt { font-size:22px; }

	/* section5 */
	.section5 { height:auto; padding-bottom:60px; }
	.section5 .tab { display:none; }
	#sec5Con { margin:20px 20px 0; }
	#sec5Con ul { padding-bottom:40px; }
	#sec5Con li { position:relative; padding:0 20px; box-sizing:border-box; }
	#sec5Con li.w50 { width:100%; }
	#sec5Con li > label { display:block; position:absolute; left:20px; right:20px; top:10px; width:auto; line-height:40px; padding:0; text-align:center; color:#555; }
	#sec5Con li.w50 > label { width:auto; }
	#sec5Con li > label.forContent { line-height:100px; }
	#sec5Con li > label.forFile { display:none !important; }
	#sec5Con li > label.forCaptcha { line-height:115px; }
	#sec5Con li > p { display:block; padding:10px 0; }
	#sec5Con li input { height:40px; }
	#sec5Con .inputSize2 { width:100%; }
	#sec5Con .inputSize3 { width:100%; }
	#sec5Con .filebox .upload-name { position:absolute; left:20px; bottom:-40px; background:none; border:none; color:#fff; }
	#sec5Con .filebox label { display:none; }
	#sec5Con .filebox .formobile{ display:block; width:100%; height:40px; line-height:40px; margin:0; }
	#sec5Con .btns { margin-top:0px; padding:0 20px; }
	#sec5Con .btns .btn_submit { width:100%; height:65px; line-height:65px; font-size:18px; font-weight:400; border-radius:0; background-size:auto 100%; }
	#sec5Con .btns .btn_cancle { display:none; }

	/* section6 */
	.section6 { padding:0 20px 85px; }
	.sec6Con1 li { width:100%; padding:20px 0; margin:0 0 12px; line-height:1em; border-radius:5px; font-size:17px; }
	.sec6Con1 li:after { left:0; right:0; top:auto; bottom:-8px; width:16px; height:8px; margin:0 auto; background:url(/img/main/m_arr_section6_1.png); }
	.sec6Con1 li.list2:after { background-image:url(/img/main/m_arr_section6_2.png); }
	.sec6Con1 li.list3:after { background-image:url(/img/main/m_arr_section6_3.png); }
	.sec6Con1 li.list4:after { background-image:url(/img/main/m_arr_section6_4.png); }
	.sec6Con1 li.list5:after { background-image:url(/img/main/m_arr_section6_5.png); }
	.sec6Con1 li span { display:inline; }
	#main_pSelect_option label { margin:0; font-size:18px; }
	#main_pSelect_option label + label { margin-left:25px; }
	#product_list #product1 p { display:block; margin:0 !important; }
	#product_list #product1 a { font-size:40px; }
	.optionChoice th { font-size:14px; padding:10px 0; }
	.optionChoice td { padding:5px; font-size:12px; }
	.optionChoice td:nth-child(1), .optionChoice th:nth-child(1) { width:29%; }
	.optionChoice td:nth-child(2), .optionChoice th:nth-child(2) { width:22%; }
	#product_list { padding:0 20px; }
	#product_list li { width:100%; height:360px; margin:0 0 12px; }
	#product_list li dl { height:338px; }
	#product_list .btn_payment { left:8%; width:84%; }

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

	/* map */
	.map .root_daum_roughmap { height:450px; }
	.map .txt { position:static; width:100%; -webkit-transform:translateY(0); -ms-transform:translateY(0); transform:translateY(0); }
	.map .txt dl { padding:30px 5% 10px; }
	.map .txt dt { padding-bottom:20px; margin-bottom:30px; }
	.map .txt br { display:none; }
}


@media screen and (max-width:480px) {  
	/* section3 */
	.sec3Con dl { padding:40px 15px; }
	.sec3Con dt { letter-spacing:-0.03em; }

	/* section5 */
	#sec5Con { margin:20px 10px 0; }
	#sec5Con li { padding:0 10px; }
	#sec5Con .btns { padding:0 10px; }
	#sec5Con .btns .btn_submit { height:50px; line-height:50px; }

	/* section6 */
	.optionChoice .service dd { float:none; }
	.optionChoice .service dd:last-child { padding-top:0; }

	#main_pSelect {width:100%; box-sizing:border-box;}
	#main_pSelect_option {width:auto;}
	#main_pSelect_option label { font-size:14px; /*padding-left:8px;*/ }
	#main_pSelect_option label + label { margin-left:1%; }
	/*#main_pSelect_option label:before { width:4px; height:4px; margin-top:-2px; }*/

	#product_list { padding:0; }

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

	/* map */
	.map .root_daum_roughmap { height:250px; }
}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	</form>
<script type="text/javascript">
function PaySubmit() {
	document.contractform.action = "contract_payreq.asp";
	window.open("", "PayOneQ결제", "width=480,height=700,scrollbars=no,resize=no");
	document.contractform.target = "PayOneQ결제";
	document.contractform.submit();
}
</script>
</article>
</body>
</html>