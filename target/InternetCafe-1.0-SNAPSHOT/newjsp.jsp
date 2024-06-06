<!DOCTYPE html>
<html>
<head>
<style>
.container {
  position: relative;
  width: 200px;
  height: 100px;
  border: 1px solid #000;
  border-radius: 100px 100px 0 0;
  overflow: hidden;
}

.element {
  position: absolute;
  bottom: 0;
  width: 40px;
  height: 40px;
  background-color: #4CAF50;
}

.element:nth-child(1) { left: 10%; transform: translateY(50%); }
.element:nth-child(2) { left: 30%; transform: translateY(50%); }
.element:nth-child(3) { left: 50%; transform: translateY(50%); }
.element:nth-child(4) { left: 70%; transform: translateY(50%); }
.element:nth-child(5) { left: 90%; transform: translateY(50%); }
</style>
</head>
<body>

<div class="container">
  <div class="element"></div>
  <div class="element"></div>
  <div class="element"></div>
  <div class="element"></div>
  <div class="element"></div>
</div>

</body>
</html>
