<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
<!DOCTYPE html>

<html>

<head>
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
</head>
<body>
   <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handsontable/5.0.0/handsontable.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/web-animations/2.3.1/web-animations.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/hammer.js/2.0.8/hammer.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/muuri/0.5.4/muuri.min.js"></script>
	 <div class="container space-2">
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
				<tspan style="font-weight:bold" dx="0">1 units</tspan></text></g>
				</svg>
		</div>
	</div>
	</div>
	<script>
       //
        //하이차트(div의 아이디값, chart데이터 객체)
        //text로 변환 후에 JSON.parse안하면 오류남 (비동기떄문에 그런거같음)
        //var textData = 
        //${food_don}
        var chartData = JSON.parse('${food_don}');
        var monthData = [];
        var priceData = [];
        
        async function goWork(){
        	await conconcon();
        	console.dir(monthData);
        	console.dir(priceData);
        };
        
        function conconcon(){
        	console.dir(chartData)
	        for(key in chartData){
            	monthData.push(chartData[key].MOONTH);
            	priceData.push(chartData[key].SUMPRICE);
            };
        };
        goWork();
        
        Highcharts.chart('container', {
            chart: {
                type: 'areaspline'
            },
            title: {
                text: '연간 매출 결산'
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
                categories: monthData,
                plotBands: [{ // visualize the weekend
                    from: 4.5,
                    to: 6.5,
                    color: 'rgba(68, 170, 213, .2)'
                }]
            },
            yAxis: {
                title: {
                    text: '매출금액'
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
                name: '승인',
                data: priceData
            }]
        });
    </script>

<%@ include file="../../common/footer.jsp" %>
</body>
</html>