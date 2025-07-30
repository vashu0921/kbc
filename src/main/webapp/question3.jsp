<%@ page import="java.util.*" %>
<%
    String question = "Which is the only desert in India?";
    String[] options = {"Gobi Desert", "Sahara Desert", "Thar Desert", "Kalahari Desert"};
    String answer = "Thar Desert";
    session.setAttribute("correct", answer);
%>
<!DOCTYPE html>
<html>
<head>
  <title>KBC Question 3</title>
  <script src="script.js"></script>
</head>

<body onload="startTimer();" style="margin:0; padding:0; background-image: url('img_files/4.webp'); background-size: cover; background-position: center; background-repeat: no-repeat; height: 100vh;">

  <div style="text-align: center; padding-top: 100px; color: white;">
    <div style="display: inline-block; background-color: rgba(0, 0, 0, 0.7); padding: 30px; border-radius: 15px; box-shadow: 0 0 20px #00ffff; max-width: 600px;">
      <h2 style="font-size: 28px; font-weight: bold; margin-bottom: 30px;"><%= question %></h2>

      <form action="AnswerServlet" method="post">
      <input type="hidden" name="currentQuestion" value="3" />
      
        <% for (String option : options) { %>
          <label style="display: block; margin: 10px 0; font-size: 20px;">
            <input type="radio" name="selected" value="<%= option %>" required />
            <span><%= option %></span>
          </label>
        <% } %>

        <!-- Current Question Hidden Field -->
        <input type="hidden" name="currentQuestion" value="3" />

        <!-- Lock Answer Button -->
        <input type="submit" value=" &#x1F512;Lock Answer" style="margin-top: 20px; padding: 10px 20px; font-size: 18px; background-color: gold; color: black; border: none; border-radius: 8px; cursor: pointer;" />
      </form>

      <!-- Timer -->
      <p id="timer" style="margin-top: 20px; font-size: 20px;">&#x23F3; Time left: <span id="time">30</span>s</p>

      <!-- Lifeline Buttons -->
      <div style="margin-top: 30px;">
        <button onclick="alert('Calling your friend...');" 
          style="margin: 5px; padding: 10px 15px; font-size: 16px; background-color: #0099ff; color: white; border: none; border-radius: 8px; cursor: pointer;">
          &#x1F4DE; Call a Friend
        </button>

        <button onclick="alert(' Asking the audience...');" 
          style="margin: 5px; padding: 10px 15px; font-size: 16px; background-color: #6600cc; color: white; border: none; border-radius: 8px; cursor: pointer;">
          &#x1F465; Audience Poll
        </button>
      </div>
    </div>
  </div>

</body>
</html>
