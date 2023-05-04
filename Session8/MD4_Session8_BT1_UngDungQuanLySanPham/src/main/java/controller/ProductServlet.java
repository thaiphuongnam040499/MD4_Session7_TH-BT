package controller;

import model.Product;
import service.IProductService;
import service.ProductServiceIMPL;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    IProductService productService = new ProductServiceIMPL();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showUpdateForm(request,response);
                break;
            case "delete":
                break;
            case "view":
                break;
            default:
                showListProduct(request, response);
                break;
        }
    }

    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Product/edit.jsp").forward(request,response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Product/create.jsp").forward(request, response);
    }

    private void showListProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = this.productService.findAll();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/Product/list.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "update":
                break;
            case "delete":
                break;
            default:
                break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String proName = request.getParameter("name");
        String proDes = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("exportPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int id;
        if (productService.findAll().isEmpty()) {
            id = 1;
        } else {
            id = productService.findAll().get(productService.findAll().size() - 1).getId() + 1;
        }
        Product product = new Product(id,proName,proDes,price,quantity);
        this.productService.save(product);
        request.getRequestDispatcher("Product/create.jsp").forward(request,response);
        request.setAttribute("message", "New product was created");
    }

    public void destroy() {
    }
}