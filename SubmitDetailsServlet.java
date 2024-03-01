package com.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubmitDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String id = request.getParameter("id");
        String phoneNumber = request.getParameter("phoneNumber");
        String age = request.getParameter("age");
        
        // Redirect to a JSP page to display the details
        response.sendRedirect("showDetails.jsp?firstName=" + firstName + "&lastName=" + lastName + "&id=" + id + "&phoneNumber=" + phoneNumber + "&age=" + age);
    }
}
