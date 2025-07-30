<!-- <!DOCTYPE html>
<html>
<head>
  <title>You Win!</title>
  <link rel="stylesheet" href="style.css">
  <script>
    new Audio("sounds/CorrectAns.wav").play();
  </script>
</head>
<body style="margin:0; padding:0; background-image: url('img_files/3.webp'); background-size: cover; background-position: center; background-repeat: no-repeat; height: 100vh; display: flex; justify-content: center; align-items: center;">

  <div style="text-align: center; background-color: rgba(0,0,0,0.7); padding: 40px; border-radius: 20px; box-shadow: 0 0 20px gold;">
   
    <h1 style="color: red; font-weight: bold; font-size: 32px; margin-bottom: 30px;">
      &#127881;  Congratulations! You are a Crorepati! &#127881; 
    </h1>
    
    <button onclick="location.href='question.jsp'" 
            style="padding: 10px 20px; font-size: 18px; margin: 10px; border: none; border-radius: 8px; cursor: pointer; background-color: gold; color: black;">
      &#9654; Play More
    </button>
    <br>
    <button onclick="location.href='end.html'" 
            style="padding: 10px 20px; font-size: 18px; margin: 10px; border: none; border-radius: 8px; cursor: pointer; background-color: red; color: white;">
      &#128682;  Quit
    </button>
  </div>

</body>
</html> -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String nextPage = request.getParameter("next");
  if (nextPage == null || nextPage.isEmpty()) {
    nextPage = "index.html"; // fallback
  }
%>
<!DOCTYPE html>
<html>
<head>
  <title>You Win!</title>
  <link rel="stylesheet" href="style.css">
  
  <!-- Auto Redirect after 10 seconds -->
  <meta http-equiv="refresh" content="10;URL=<%= nextPage %>">

  <!-- Correct answer sound -->
  <script>
    window.onload = function () {
      new Audio("sounds/CorrectAns.wav").play();
    };
  </script>
</head>

<body style="margin:0; padding:0; background-image: url('img_files/3.webp'); background-size: cover; background-position: center; background-repeat: no-repeat; height: 100vh; display: flex; justify-content: center; align-items: center;">

  <div style="text-align: center; background-color: rgba(0,0,0,0.7); padding: 40px; border-radius: 20px; box-shadow: 0 0 20px gold;">
    <h1 style="color: red; font-weight: bold; font-size: 32px; margin-bottom: 30px;">
      🎉 Congratulations!🎉
    </h1>

     <button onclick="location.href='<%= nextPage %>'" 
            style="padding: 10px 20px; font-size: 18px; margin: 10px; border: none; border-radius: 8px; cursor: pointer; background-color: gold; color: black;">
      ▶ Play More
    </button>
    <br>
    <button onclick="location.href='end.html'" 
            style="padding: 10px 20px; font-size: 18px; margin: 10px; border: none; border-radius: 8px; cursor: pointer; background-color: red; color: white;">
      🛑 Quit
    </button>

    <p style="color: white; margin-top: 20px;">Redirecting in 10 seconds...</p>
  </div>

</body>
</html>
