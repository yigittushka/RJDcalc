package com.turdiev.rjdCalc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalculateServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("GBK");
        PrintWriter out = response.getWriter();

        double firstNumber = Double.valueOf(request.getParameter("firstNumber"));

        double secondNumber = Double.valueOf(request.getParameter("secondNumber"));

        String operation = request.getParameter("operation");

        double result = 0;

        if("+".equals(operation)){
            result = firstNumber + secondNumber;
        }else if("-".equals(operation)){
            result = firstNumber - secondNumber;
        }else if("*".equals(operation)){
            result = firstNumber * secondNumber;
        }else if("/".equals(operation)){
            result = firstNumber / secondNumber;
        }

        out.print(firstNumber + " " + operation +  " " + secondNumber + " = " + result);
        out.print("<br><a href='index.jsp'>Back</a>");
        out.flush();
        out.close();
    }

}

