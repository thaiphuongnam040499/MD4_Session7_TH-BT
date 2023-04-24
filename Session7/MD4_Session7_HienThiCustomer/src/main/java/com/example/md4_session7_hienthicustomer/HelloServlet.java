package com.example.md4_session7_hienthicustomer;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Customers> customersList = new ArrayList<>();
        customersList.add(new Customers("Mai Văn Toàn","1983-08-20","Hà Nội",""));
        customersList.add(new Customers("Nguyễn Văn Nam","1983-08-21","Bắc Giang",""));
        customersList.add(new Customers("Nguyễn Thái Hòa","1983-08-22","Nam Định",""));
        customersList.add(new Customers("Trần Đăng Khoa","1983-08-17","Hà Tây",""));
        customersList.add(new Customers("Nguyễn Đình Thi","1983-08-19","Hà Nội",""));
        request.setAttribute("listCustomer" , customersList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
    }
}