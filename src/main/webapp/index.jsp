<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="scripts/jquery/jquery-ui.min.css" />
<script src="scripts/jquery/jquery-1.12.4.min.js"></script>
<script src="scripts/jquery/jquery-ui.min.js"></script>
<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
<style>
#draggable {
	width: 150px;
	height: 150px;
	padding: 0.5em;
}
</style>
<script>
	$(function() {
		$("#draggable").draggable();
	});

	var width = 300; //画布的宽度
	var height = 300; //画布的高度

	var svg = d3.select("body") //选择文档中的body元素
	.append("svg") //添加一个svg元素
	.attr("width", width) //设定宽度
	.attr("height", height); //设定高度

	var dataset = [ 250, 210, 170, 130, 90 ];

	var rectHeight = 25; //每个矩形所占的像素高度(包括空白)

	svg.selectAll("rect").data(dataset).enter().append("rect").attr("x", 20)
			.attr("y", function(d, i) {
				return i * rectHeight;
			}).attr("width", function(d) {
				return d;
			}).attr("height", rectHeight - 2).attr("fill", "steelblue");
</script>
</head>
<body>
	<h2>Hello World!</h2>
	<h2>Hello World! Using JqueryUI</h2>

	<p>Hello World 1</p>
	<p>Hello World 2</p>
	<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
	<script>
		d3.select("body").selectAll("p").text("www.ourd3js.com");
	</script>

	<div id="draggable" class="ui-widget-content">
		<p>请把我拖拽到目标处！</p>
	</div>

	<div id="droppable" class="ui-widget-header">
		<p>请放置在这里！</p>
	</div>
</body>
</html>
