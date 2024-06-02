<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Floating Labels Example</title>
  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f5f5f5;
      flex-direction: column;
    }

    .container {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .form-floating {
      position: relative;
      margin-bottom: 20px;
    }

    .form-control {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 5px;
      outline: none;
    }

    .form-control:focus {
      border-color: #007bff;
    }

    .form-control:focus + label,
    .form-control:not(:placeholder-shown) + label {
      top: -20px;
      left: 10px;
      font-size: 12px;
      color: #007bff;
      background-color: #fff;
      padding: 0 5px;
    }

    label {
      position: absolute;
      top: 10px;
      left: 15px;
      font-size: 16px;
      color: #777;
      transition: all 0.2s ease;
      pointer-events: none;
      background-color: transparent;
    }

    .hidden-box {
      visibility: hidden;
      opacity: 0;
      transition: visibility 0s, opacity 0.5s linear;
      background-color: #e0e0e0;
      padding: 20px;
      border-radius: 5px;
      margin-top: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .hidden-box.visible {
      visibility: visible;
      opacity: 1;
    }
  </style>
</head>
<body>
  <div class="container">
    <form>
      <div class="form-floating">
        <input type="email" class="form-control" id="email" placeholder=" ">
        <label for="email">Email address</label>
      </div>
      <div class="form-floating">
        <input type="password" class="form-control" id="password" placeholder=" ">
        <label for="password">Password</label>
      </div>
    </form>
  </div>

  <button onclick="showNextBox()">Show Next Box</button>

  <div class="hidden-box">
    This is the first hidden box.
  </div>
  <div class="hidden-box">
    This is the second hidden box.
  </div>
  <div class="hidden-box">
    This is the third hidden box.
  </div>

  <script>
    let currentBoxIndex = 0;

    function showNextBox() {
      const boxes = document.querySelectorAll('.hidden-box');
      if (currentBoxIndex < boxes.length) {
        boxes[currentBoxIndex].style.visibility = 'visible';
        boxes[currentBoxIndex].style.opacity = '1';
        currentBoxIndex++;
      }
    }
  </script>
</body>
</html>
