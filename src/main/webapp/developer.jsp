<!DOCTYPE html>
<html>
<head>
  <title>About the Developer</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body, html {
      height: 100%;
      font-family: Arial, sans-serif;
    }

    .main-container {
      display: flex;
      height: 100vh;
    }

    .left-panel {
      flex: 1;
      background: url('img_files/20.jpg') no-repeat center center;
      background-size: cover;
    }

    .right-panel {
      flex: 1;
      background: url('img_files/3.webp') no-repeat center center;
      background-size: cover;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 40px;
      background-color: rgba(0, 0, 0, 0.5);
    }

    .info-box {
      background-color: rgba(0, 0, 0, 0.6);
      padding: 30px;
      border-radius: 15px;
      color: white;
      max-width: 600px;
      box-shadow: 0 0 15px cyan;
    }

    .info-box h2 {
      font-size: 36px;
      margin-bottom: 20px;
    }

    .info-box p {
      font-size: 18px;
      line-height: 1.6;
    }

    .info-box button {
      margin-top: 30px;
      padding: 10px 25px;
      font-size: 18px;
      background-color: gold;
      color: black;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.3s;
    }

    .info-box button:hover {
      background-color: orange;
    }

    @media (max-width: 768px) {
      .main-container {
        flex-direction: column;
      }

      .left-panel,
      .right-panel {
        flex: none;
        width: 100%;
        height: 50%;
      }

      .info-box {
        text-align: center;
      }
    }
  </style>
</head>
<body>

<div class="main-container">
  <div class="left-panel"></div>

  <div class="right-panel">
    <div class="info-box">
      <h2>Abhishek Singh</h2>
      <p>Hello! I'm a dedicated Java full-stack developer. This "Kaun Banega Crorepati" game is created using JSP, Servlets, HTML, and CSS to provide a fun, educational experience. I'm passionate about building interactive projects that combine learning with creativity.</p>
      <button onclick="location.href='index.html'">Enter Welcome Page &#9654;</button>
    </div>
  </div>
</div>

</body>
</html>
