<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../common/setting.jsp" %>
<%@ include file="../../common/header.jsp" %>
<%@ include file="../../common/foodMiddleHeaderManage.jsp" %>
	
 <div class="col-sm-4 col-lg-7 order-sm-2 text-sm-right mb-4 mb-sm-0 container space-2">
	<div class="card-deck d-block d-lg-flex card-lg-gutters-3">
	   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Element", "Density", { role: "style" } ],
        ["9AM", 200, "#fa466e"],
        ["10AM", 300, "#fa466e"],
        ["11AM", 187, "#fa466e"],
        ["12PM", 500, "#fa466e"],
        ["1PM", 238, "#fa466e"],
        ["2PM", 302, "#fa466e"],
        ["3PM", 170, "#fa466e"],
        ["4PM", 189, "#fa466e"],
        ["5PM", 120, "#fa466e"],
        ["6PM", 134, "#fa466e"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "시간별 결산",
        width: 1000,
        height: 500,
        bar: {groupWidth: "50%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>
	<div id="columnchart_values" style="width: 1000px; height: 300px;"></div>
   </div>
</div>
<br><br><br>
<!-- ========== END MAIN ========== -->
<%@ include file="../../common/footer.jsp" %>