//
//package kbc;
//
//import java.io.*;
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.WebServlet;
//@WebServlet("/AnswerServlet")
//
//public class AnswerServlet extends HttpServlet {
//  /**
//	 * 
//	 */
//	private static final long serialVersionUID = 1L;
//
//  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    String selected = request.getParameter("selected");
//    HttpSession session = request.getSession();
//    String correct = (String) session.getAttribute("correct");
//
//    if (selected != null && selected.equals(correct)) {
//     
//      response.sendRedirect("winner.jsp");
//    } else {
//      
//      response.sendRedirect("wrong.jsp");
//    }
//  }
//}
package kbc;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AnswerServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String selected = request.getParameter("selected");
    HttpSession session = request.getSession();
    String correct = (String) session.getAttribute("correct");
    String currentQuestion = request.getParameter("currentQuestion");

    if (selected != null && selected.equals(correct)) {
      // Determine next question
      String nextPage;
      switch (currentQuestion) {
        case "1":
          nextPage = "question2.jsp";
          break;
        case "2":
          nextPage = "question3.jsp";
          break;
        case "3":
          nextPage = "end.html";  // Or final result page
          break;
        default:
          nextPage = "index.html";
      }

      // Redirect to winner.jsp with next page parameter
      response.sendRedirect("winner.jsp?next=" + nextPage);
    } else {
      // Wrong answer
      response.sendRedirect("wrong.jsp");
    }
  }
}
