<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Slideshow</title>
  <style>
    .slideshow-container {
      position: relative;
      max-width: 800px;
      margin: auto;
    }

    .slides {
      display: flex;
    }

    .slides img {
      width: 100%;
      transition: transform 0.5s ease;
    }

    button {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      padding: 10px 20px;
      cursor: pointer;
    }

    #prevBtn {
      left: 10px;
    }

    #nextBtn {
      right: 10px;
    }
  </style>
</head>
<body>
  <div class="slideshow-container">
    <div class="slides">
      <img src="image/Menu/1.jpg" alt="Slide 1">
      <img src="image/Menu/2.jpg" alt="Slide 2">
      <img src="image/Menu/3.jpg" alt="Slide 3">
      <img src="image/Menu/4.jpg" alt="Slide 4">
      <img src="image/Menu/5.jpg" alt="Slide 1">
      <img src="image/Menu/6.jpg" alt="Slide 2">
      <img src="image/Menu/3.jpg" alt="Slide 3">
      <img src="image/Menu/4.jpg" alt="Slide 4">
    </div>
    <button id="prevBtn" onclick="plusSlides(-1)">Previous</button>
    <button id="nextBtn" onclick="plusSlides(1)">Next</button>
  </div>
  <script>
    let slideIndex = 0;

    function showSlides() {
      const slides = document.querySelectorAll('.slides img');
      slides.forEach((slide, index) => {
        if (index === slideIndex) {
          slide.style.transform = 'translateX(0)';
        } else {
          slide.style.transform = 'translateX(-100%)';
        }
      });
    }

    function plusSlides(n) {
      slideIndex += n;
      if (slideIndex < 0) {
        slideIndex = 0;
      } else if (slideIndex >= 4) {
        slideIndex = 0;
      }
      showSlides();
    }

    showSlides();
  </script>
</body>
</html>
