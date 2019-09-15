<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../common/setting.jsp" %>
<%-- <%@ include file="../../common/header.jsp" %> --%>
<%@ include file="../../common/headerAdmin.jsp" %>

<html>


<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
        @import url("https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css");
    </style>
    <style type="text/css">
        @import url("https://cdnjs.cloudflare.com/ajax/libs/handsontable/5.0.0/handsontable.full.min.css");

        .handsontable td,
        .handsontable tr,
        .handsontable th {
            border: 0 !important;
        }

        .handsontable th {
            background-color: #ffffff;
        }

        .sans {
            font: 0.8em sans-serif;
        }
    </style>


   <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handsontable/5.0.0/handsontable.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web-animations/2.3.1/web-animations.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/muuri/0.5.4/muuri.min.js"></script>

    <div class="grid" >
        <div class="item">
            <div class="item-content">
                
                <div id="7lfxIhp2GiscHjEmabeklB"></div>
            </div>
        </div>
    </div>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0px auto; overflow: hidden;"
		data-highcharts-chart="0">
		<div id="highcharts-1xleot6-0" dir="ltr" class="highcharts-container "
			style="position: relative; overflow: hidden; width: 839px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
			<svg version="1.1" class="highcharts-root"
				style="font-family: &amp; quot; Lucida Grande&amp;quot; , &amp; quot; Lucida Sans Unicode&amp;quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
				xmlns="http://www.w3.org/2000/svg" width="839" height="400"
				viewBox="0 0 839 400">
				<desc>Created with Highcharts 7.2.0</desc>
				<defs>
				<clipPath id="highcharts-1xleot6-1-">
				<rect x="0" y="0" width="752" height="310" fill="none"></rect></clipPath></defs>
				<rect fill="#ffffff" class="highcharts-background" x="0" y="0"
					width="839" height="400" rx="0" ry="0"></rect>
				<rect fill="none" class="highcharts-plot-background" x="77" y="53"
					width="752" height="310"></rect>
				<g class="highcharts-plot-bands-0" data-z-index="0">
				<path fill="rgba(68, 170, 213, .2)" class="highcharts-plot-band "
					d="M 613.5 53 L 613.5 363 828.5 363 828.5 53 z"></path></g>
				<g class="highcharts-grid highcharts-xaxis-grid" data-z-index="1">
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 183.5 53 L 183.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 291.5 53 L 291.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 398.5 53 L 398.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 506.5 53 L 506.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 613.5 53 L 613.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 721.5 53 L 721.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 828.5 53 L 828.5 363" opacity="1"></path>
				<path fill="none" data-z-index="1" class="highcharts-grid-line"
					d="M 76.5 53 L 76.5 363" opacity="1"></path></g>
				<g class="highcharts-grid highcharts-yaxis-grid" data-z-index="1">
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 363.5 L 829 363.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 311.5 L 829 311.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 260.5 L 829 260.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 208.5 L 829 208.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 156.5 L 829 156.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 105.5 L 829 105.5" opacity="1"></path>
				<path fill="none" stroke="#e6e6e6" stroke-width="1" data-z-index="1"
					class="highcharts-grid-line" d="M 77 52.5 L 829 52.5" opacity="1"></path></g>
				<rect fill="none" class="highcharts-plot-border" data-z-index="1"
					x="77" y="53" width="752" height="310"></rect>
				<g class="highcharts-axis highcharts-xaxis" data-z-index="2">
				<path fill="none" class="highcharts-axis-line" stroke="#ccd6eb"
					stroke-width="1" data-z-index="7" d="M 77 363.5 L 829 363.5"></path></g>
				<g class="highcharts-axis highcharts-yaxis" data-z-index="2">
				<text x="25.640625" data-z-index="7" text-anchor="middle"
					transform="translate(0,0) rotate(270 25.640625 208)"
					class="highcharts-axis-title" style="color:#666666;fill:#666666;"
					y="208">
				<tspan>Fruit units</tspan></text>
				<path fill="none" class="highcharts-axis-line" data-z-index="7"
					d="M 77 53 L 77 363"></path></g>
				<g class="highcharts-series-group" data-z-index="3">
				<g data-z-index="0.1"
					class="highcharts-series highcharts-series-0 highcharts-areaspline-series highcharts-color-0  "
					transform="translate(77,53) scale(1 1)"
					clip-path="url(#highcharts-1xleot6-1-)">
				<path fill="rgba(124,181,236,0.5)"
					d="M 53.714285714286 248 C 53.714285714286 248 118.1714285714304 227.33333333333331 161.14285714286 227.33333333333331 C 204.114285714288 227.33333333333331 225.600000000002 248 268.57142857143 248 C 311.542857142858 248 333.02857142857204 206.66666666666666 376 206.66666666666666 C 418.97142857142796 206.66666666666666 440.457142857142 227.33333333333331 483.42857142857 227.33333333333331 C 526.399999999998 227.33333333333331 547.8857142857121 136.39999999999992 590.85714285714 103.33333333333331 C 633.8285714285681 70.26666666666661 698.28571428571 62 698.28571428571 62 L 698.28571428571 310 C 698.28571428571 310 633.8285714285681 310 590.85714285714 310 C 547.8857142857121 310 526.399999999998 310 483.42857142857 310 C 440.457142857142 310 418.97142857142796 310 376 310 C 333.02857142857204 310 311.542857142858 310 268.57142857143 310 C 225.600000000002 310 204.114285714288 310 161.14285714286 310 C 118.1714285714304 310 53.714285714286 310 53.714285714286 310"
					class="highcharts-area" data-z-index="0"></path>
				<path fill="none"
					d="M 53.714285714286 248 C 53.714285714286 248 118.1714285714304 227.33333333333331 161.14285714286 227.33333333333331 C 204.114285714288 227.33333333333331 225.600000000002 248 268.57142857143 248 C 311.542857142858 248 333.02857142857204 206.66666666666666 376 206.66666666666666 C 418.97142857142796 206.66666666666666 440.457142857142 227.33333333333331 483.42857142857 227.33333333333331 C 526.399999999998 227.33333333333331 547.8857142857121 136.39999999999992 590.85714285714 103.33333333333331 C 633.8285714285681 70.26666666666661 698.28571428571 62 698.28571428571 62"
					class="highcharts-graph" data-z-index="1" stroke="#7cb5ec"
					stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path>
				<path fill="none"
					d="M 43.714285714286 248 L 53.714285714286 248 C 53.714285714286 248 118.1714285714304 227.33333333333331 161.14285714286 227.33333333333331 C 204.114285714288 227.33333333333331 225.600000000002 248 268.57142857143 248 C 311.542857142858 248 333.02857142857204 206.66666666666666 376 206.66666666666666 C 418.97142857142796 206.66666666666666 440.457142857142 227.33333333333331 483.42857142857 227.33333333333331 C 526.399999999998 227.33333333333331 547.8857142857121 136.39999999999992 590.85714285714 103.33333333333331 C 633.8285714285681 70.26666666666661 698.28571428571 62 698.28571428571 62 L 708.28571428571 62"
					visibility="visible" data-z-index="2"
					class="highcharts-tracker-line" stroke-linejoin="round"
					stroke="rgba(192,192,192,0.0001)" stroke-width="22"></path></g>
				<g data-z-index="0.1"
					class="highcharts-markers highcharts-series-0 highcharts-areaspline-series highcharts-color-0  highcharts-tracker "
					transform="translate(77,53) scale(1 1)">
				<path fill="#7cb5ec" d="M 53 248 A 0 0 0 1 1 53 248 Z"
					class="highcharts-halo highcharts-color-0" data-z-index="-1"
					fill-opacity="0.25" visibility="hidden"></path>
				<path fill="#7cb5ec"
					d="M 53 252 A 4 4 0 1 1 53.00399999933334 251.99999800000018 Z"
					opacity="1" class="highcharts-point highcharts-color-0 "
					stroke-width="0.000009869571931497845"></path>
				<path fill="#7cb5ec"
					d="M 161 231 A 4 4 0 1 1 161.00399999933333 230.99999800000018 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path>
				<path fill="#7cb5ec"
					d="M 268 252 A 4 4 0 1 1 268.00399999933336 251.99999800000018 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path>
				<path fill="#7cb5ec"
					d="M 376 211 A 4 4 0 1 1 376.00399999933336 210.99999800000018 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path>
				<path fill="#7cb5ec"
					d="M 483 231 A 4 4 0 1 1 483.00399999933336 230.99999800000018 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path>
				<path fill="#7cb5ec"
					d="M 590 107 A 4 4 0 1 1 590.0039999993334 106.99999800000016 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path>
				<path fill="#7cb5ec"
					d="M 698 66 A 4 4 0 1 1 698.0039999993334 65.99999800000016 Z"
					opacity="1" class="highcharts-point highcharts-color-0"></path></g>
				<g data-z-index="0.1"
					class="highcharts-series highcharts-series-1 highcharts-areaspline-series highcharts-color-1 "
					transform="translate(77,53) scale(1 1)"
					clip-path="url(#highcharts-1xleot6-1-)">
				<path fill="rgba(67,67,72,0.5)"
					d="M 53.714285714286 289.3333333333333 C 53.714285714286 289.3333333333333 118.1714285714304 260.4000000000002 161.14285714286 248 C 204.114285714288 235.60000000000022 225.600000000002 227.33333333333331 268.57142857143 227.33333333333331 C 311.542857142858 227.33333333333331 333.02857142857204 248 376 248 C 418.97142857142796 248 440.457142857142 248 483.42857142857 248 C 526.399999999998 248 547.8857142857121 206.66666666666666 590.85714285714 206.66666666666666 C 633.8285714285681 206.66666666666666 698.28571428571 227.33333333333331 698.28571428571 227.33333333333331 L 698.28571428571 310 C 698.28571428571 310 633.8285714285681 310 590.85714285714 310 C 547.8857142857121 310 526.399999999998 310 483.42857142857 310 C 440.457142857142 310 418.97142857142796 310 376 310 C 333.02857142857204 310 311.542857142858 310 268.57142857143 310 C 225.600000000002 310 204.114285714288 310 161.14285714286 310 C 118.1714285714304 310 53.714285714286 310 53.714285714286 310"
					class="highcharts-area" data-z-index="0"></path>
				<path fill="none"
					d="M 53.714285714286 289.3333333333333 C 53.714285714286 289.3333333333333 118.1714285714304 260.4000000000002 161.14285714286 248 C 204.114285714288 235.60000000000022 225.600000000002 227.33333333333331 268.57142857143 227.33333333333331 C 311.542857142858 227.33333333333331 333.02857142857204 248 376 248 C 418.97142857142796 248 440.457142857142 248 483.42857142857 248 C 526.399999999998 248 547.8857142857121 206.66666666666666 590.85714285714 206.66666666666666 C 633.8285714285681 206.66666666666666 698.28571428571 227.33333333333331 698.28571428571 227.33333333333331"
					class="highcharts-graph" data-z-index="1" stroke="#434348"
					stroke-width="2" stroke-linejoin="round" stroke-linecap="round"></path>
				<path fill="none"
					d="M 43.714285714286 289.3333333333333 L 53.714285714286 289.3333333333333 C 53.714285714286 289.3333333333333 118.1714285714304 260.4000000000002 161.14285714286 248 C 204.114285714288 235.60000000000022 225.600000000002 227.33333333333331 268.57142857143 227.33333333333331 C 311.542857142858 227.33333333333331 333.02857142857204 248 376 248 C 418.97142857142796 248 440.457142857142 248 483.42857142857 248 C 526.399999999998 248 547.8857142857121 206.66666666666666 590.85714285714 206.66666666666666 C 633.8285714285681 206.66666666666666 698.28571428571 227.33333333333331 698.28571428571 227.33333333333331 L 708.28571428571 227.33333333333331"
					visibility="visible" data-z-index="2"
					class="highcharts-tracker-line" stroke-linejoin="round"
					stroke="rgba(192,192,192,0.0001)" stroke-width="22"></path></g>
				<g data-z-index="0.1"
					class="highcharts-markers highcharts-series-1 highcharts-areaspline-series highcharts-color-1  highcharts-tracker"
					transform="translate(77,53) scale(1 1)">
				<path fill="#434348"
					d="M 53 289.3333333333333 A 0 0 0 1 1 53 289.3333333333333 Z"
					class="highcharts-halo highcharts-color-1" data-z-index="-1"
					fill-opacity="0.25" visibility="hidden"></path>
				<path fill="#434348"
					d="M 53 285.3333333333333 L 57 289.3333333333333 53 293.3333333333333 49 289.3333333333333 Z"
					opacity="1" class="highcharts-point highcharts-color-1 "
					stroke-width="0.00008882380959551739"></path>
				<path fill="#434348" d="M 161 244 L 165 248 161 252 157 248 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path>
				<path fill="#434348" d="M 268 223 L 272 227 268 231 264 227 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path>
				<path fill="#434348" d="M 376 244 L 380 248 376 252 372 248 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path>
				<path fill="#434348" d="M 483 244 L 487 248 483 252 479 248 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path>
				<path fill="#434348" d="M 590 203 L 594 207 590 211 586 207 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path>
				<path fill="#434348" d="M 698 223 L 702 227 698 231 694 227 Z"
					opacity="1" class="highcharts-point highcharts-color-1"></path></g></g>
				<g class="highcharts-exporting-group" data-z-index="3">
				<g class="highcharts-button highcharts-contextbutton"
					stroke-linecap="round" transform="translate(805,10)">
				<title>Chart context menu</title>
				<rect fill="#ffffff" class="highcharts-button-box" x="0.5" y="0.5"
					width="24" height="22" rx="2" ry="2" stroke="none" stroke-width="1"></rect>
				<path fill="#666666"
					d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5"
					class="highcharts-button-symbol" data-z-index="1" stroke="#666666"
					stroke-width="3"></path>
				<text x="0" data-z-index="1"
					style="font-weight:normal;color:#333333;cursor:pointer;fill:#333333;"
					y="12"></text></g></g>
				<text x="420" text-anchor="middle" class="highcharts-title"
					data-z-index="4" style="color:#333333;font-size:18px;fill:#333333;"
					y="24">
				<tspan>Average fruit consumption during one week</tspan></text>
				<text x="420" text-anchor="middle" class="highcharts-subtitle"
					data-z-index="4" style="color:#666666;fill:#666666;" y="52"></text>
				<text x="10" text-anchor="start" class="highcharts-caption"
					data-z-index="4" style="color:#666666;fill:#666666;" y="397"></text>
				<g class="highcharts-legend" data-z-index="7"
					transform="translate(160,110)">
				<rect fill="#FFFFFF" class="highcharts-legend-box" rx="0" ry="0"
					stroke="#999999" stroke-width="1" x="0.5" y="0.5" width="65"
					height="46" visibility="visible"></rect>
				<g data-z-index="1">
				<g>
				<g
					class="highcharts-legend-item highcharts-areaspline-series highcharts-color-0 highcharts-series-0"
					data-z-index="1" transform="translate(8,3)">
				<text x="21"
					style="color:#333333;cursor:pointer;font-size:12px;font-weight:bold;fill:#333333;"
					text-anchor="start" data-z-index="2" y="15">
				<tspan>John</tspan></text>
				<rect x="2" y="4" width="12" height="12" fill="#7cb5ec" rx="6"
					ry="6" class="highcharts-point" data-z-index="3"></rect></g>
				<g
					class="highcharts-legend-item highcharts-areaspline-series highcharts-color-1 highcharts-series-1"
					data-z-index="1" transform="translate(8,21)">
				<text x="21" y="15"
					style="color:#333333;cursor:pointer;font-size:12px;font-weight:bold;fill:#333333;"
					text-anchor="start" data-z-index="2">
				<tspan>Jane</tspan></text>
				<rect x="2" y="4" width="12" height="12" fill="#434348" rx="6"
					ry="6" class="highcharts-point" data-z-index="3"></rect></g></g></g></g>
				<g class="highcharts-axis-labels highcharts-xaxis-labels"
					data-z-index="7">
				<text x="130.71428571428427"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Monday</text>
				<text x="238.14285714285427"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Tuesday</text>
				<text x="345.5714285714243"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Wednesday</text>
				<text x="453.00000000000426"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Thursday</text>
				<text x="560.4285714285743"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Friday</text>
				<text x="667.8571428571444"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Saturday</text>
				<text x="775.2857142857143"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="middle" transform="translate(0,0)" y="382" opacity="1">Sunday</text></g>
				<g class="highcharts-axis-labels highcharts-yaxis-labels"
					data-z-index="7">
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="367" opacity="1">0</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="315" opacity="1">2.5</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="264" opacity="1">5</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="212" opacity="1">7.5</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="160" opacity="1">10</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="109" opacity="1">12.5</text>
				<text x="62"
					style="color:#666666;cursor:default;font-size:11px;fill:#666666;"
					text-anchor="end" transform="translate(0,0)" y="57" opacity="1">15</text></g>
				<g class="highcharts-label highcharts-tooltip highcharts-color-0"
					style="pointer-events:none;white-space:nowrap;" data-z-index="8"
					transform="translate(10,-9999)" opacity="0" visibility="visible">
				<path fill="none"
					class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
					d="M 3.5 0.5 L 102.5 0.5 C 105.5 0.5 105.5 0.5 105.5 3.5 L 105.5 59.5 C 105.5 62.5 105.5 62.5 102.5 62.5 L 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
					stroke="#000000" stroke-opacity="0.049999999999999996"
					stroke-width="5" transform="translate(1, 1)"></path>
				<path fill="none"
					class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
					d="M 3.5 0.5 L 102.5 0.5 C 105.5 0.5 105.5 0.5 105.5 3.5 L 105.5 59.5 C 105.5 62.5 105.5 62.5 102.5 62.5 L 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
					stroke="#000000" stroke-opacity="0.09999999999999999"
					stroke-width="3" transform="translate(1, 1)"></path>
				<path fill="none"
					class="highcharts-label-box highcharts-tooltip-box highcharts-shadow"
					d="M 3.5 0.5 L 102.5 0.5 C 105.5 0.5 105.5 0.5 105.5 3.5 L 105.5 59.5 C 105.5 62.5 105.5 62.5 102.5 62.5 L 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
					stroke="#000000" stroke-opacity="0.15" stroke-width="1"
					transform="translate(1, 1)"></path>
				<path fill="rgba(247,247,247,0.85)"
					class="highcharts-label-box highcharts-tooltip-box"
					d="M 3.5 0.5 L 102.5 0.5 C 105.5 0.5 105.5 0.5 105.5 3.5 L 105.5 59.5 C 105.5 62.5 105.5 62.5 102.5 62.5 L 3.5 62.5 C 0.5 62.5 0.5 62.5 0.5 59.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
					stroke="#7cb5ec" stroke-width="1"></path>
				<text x="8" data-z-index="1"
					style="font-size:12px;color:#333333;cursor:default;fill:#333333;"
					y="20">
				<tspan style="font-size: 10px">Monday</tspan>
				<tspan style="fill:#7cb5ec" x="8" dy="15">●</tspan>
				<tspan dx="0"> John: </tspan>
				<tspan style="font-weight:bold" dx="0">3 units</tspan>
				<tspan style="fill:#434348" x="8" dy="15">●</tspan>
				<tspan dx="0"> Jane: </tspan>
				<tspan style="font-weight:bold" dx="0">1 units</tspan></text></g></svg>
		</div>
	</div>
	<script>
      
         
        
        //하이차트
        Highcharts.chart('container', {
            chart: {
                type: 'areaspline'
            },
            title: {
                text: '임대 월별 결산'
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: 150,
                y: 100,
                floating: true,
                borderWidth: 1,
                backgroundColor:
                    Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF'
            },
            xAxis: {
                categories: [
                    '1월',
                    '2월',
                    '3월',
                    '4월',
                    '5월',
                    '6월',
                    '7월',
                    '8월',
                    '9월',
                    '10월',
                    '11월',
                    '12월'
                ],
                plotBands: [{ // visualize the weekend
                    from: 4.5,
                    to: 6.5,
                    color: 'rgba(68, 170, 213, .2)'
                }]
            },
            yAxis: {
                title: {
                    text: '월세금액'
                }
            },
            tooltip: {
                shared: true,
                valueSuffix: ' 원'
            },
            credits: {
                enabled: false
            },
            plotOptions: {
                areaspline: {
                    fillOpacity: 0.5
                }
            },
            //여기에 종류 추가해준다
            series: [{
                name: '보증금',
                data: [80, 90, 75, 88, 84, 98, 120, 110, 100, 90, 60, 40]
            }, {
                name: '월세',
                data: [100, 100, 110, 115, 120, 100, 120, 130, 100, 100, 120, 110]
            }]
        });
    </script>
</div>

<%@ include file="../../common/footer.jsp" %>
