<!DOCTYPE HTML>
<html>
<head>

<script src="../js/jquery-sortable.js"></script>
<style>

.placeholder {
    border: 1px solid green;
    background-color: white;
    -webkit-box-shadow: 0px 0px 10px #888;
    -moz-box-shadow: 0px 0px 10px #888;
    box-shadow: 0px 0px 10px #888;
}
.tile {
    height: 100px;
}
.grid {
    margin-top: 1em;
}
#div1, #div2 {
  float: left;
  width: 100px;
  height: 35px;
  margin: 10px;
  padding: 10px;
  border: 1px solid black;
}

body.dragging, body.dragging * {
  cursor: move !important;
}

.dragged {
  position: absolute;
  opacity: 0.5;
  z-index: 2000;
}

ol.example li.placeholder {
  position: relative;
  /** More li styles **/
}
ol.example li.placeholder:before {
  position: absolute;
  /** Define arrowhead **/
}
</style>
<script>
function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  ev.target.appendChild(document.getElementById(data));
}
</script>
<script>
$(function () {
    $(".grid").sortable({
        tolerance: 'pointer',
        revert: 'invalid',
        placeholder: 'span2 well placeholder tile',
        forceHelperSize: true
    });
});
</script>
</head>
<body>

<h2>Drag and Drop</h2>
<p>Drag the image back and forth between the two div elements.</p>

<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="img_w3slogo.gif" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
</div>

<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<p></p>
<div id="sortWrap">
	<div data-order=1>1</div>
	<div data-order=2>2</div>
	<div data-order=3>3</div>
	<div data-order=4>4</div>
	<div data-order=5>5</div>
</div>
<ol class='example'>
    <li>First</li>
    <li>Second</li>
    <li>Third</li>
  </ol>
  
  <div class="row grid span8">
    <div class="well span2 tile">A</div>
    <div class="well span2 tile">B</div>
    <div class="well span2 tile">C</div>
    <div class="well span4 tile">D</div>
</div>

</body>
</html>
