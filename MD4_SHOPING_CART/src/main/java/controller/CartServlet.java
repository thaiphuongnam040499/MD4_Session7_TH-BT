package controller;

import model.Cart;
import model.Product;
import service.CartServiceIMPL;
import service.ICartService;
import service.IProductService;
import service.ProductServiceIMPL;

import java.io.*;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/cart-servlet")
public class CartServlet extends HttpServlet {
    IProductService productService = new ProductServiceIMPL();
    ICartService cartService = new CartServiceIMPL();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        System.out.println(action);
        switch (action){
            case "show":
                show(request, response);
        }
    }


    private void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = productService.findAll();
        request.setAttribute("ListProduct", list);
        List<Cart> listCart = cartService.findAll();
        System.out.println(listCart);
        request.setAttribute("listCart",listCart);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/List.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        switch (action){
            case "create":
                createCart(request, response);
                break;
            case "update":
                break;
            default:
                break;
        }
    }

    private void createCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        int pId = Integer.parseInt(request.getParameter("pId"));
        Product product = productService.findById(pId);
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Cart cart = new Cart(id,product,quantity);
        cartService.createCart(cart);
        show(request,response);

    }

    public void destroy() {
    }
}