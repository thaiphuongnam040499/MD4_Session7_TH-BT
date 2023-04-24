package com.example.md4_session7_bt2_ungdungcalculator;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/caculator")
public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int number1 = Integer.parseInt(request.getParameter("firstoperand"));
        int number2 = Integer.parseInt(request.getParameter("secondoperand"));
        float result = 0;
        String operator = request.getParameter("operator");
        switch (operator) {
            case "+":
                result = number1 + number2;
                break;
            case "-":
                result = number1 - number2;
                break;
            case "*":
                result = number1 * number2;
                break;
            case "/":
                result = (float) number1 / number2;
                break;
            default:
                break;
        }
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("result= "+ number1 + " " + operator + " " + " " + number2 + " = " + result);
        writer.println("</html>");
    }

    public void destroy() {
    }
}