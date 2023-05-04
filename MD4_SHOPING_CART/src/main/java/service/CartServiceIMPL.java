package service;

import model.Cart;
import until.ConnectionDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartServiceIMPL implements ICartService{

    IProductService productService = new ProductServiceIMPL();
    @Override
    public List<Cart> findAll() {
        List<Cart> carts = new ArrayList<>();
        try{
            Connection conn = ConnectionDB.getConnection();
            PreparedStatement pre = conn.prepareStatement("SELECT * from Cart");
            ResultSet rs = pre.executeQuery();
            while (rs.next()){
                Cart cart = new Cart();
                cart.setId(rs.getInt("id"));
                int id = rs.getInt("pId");
                cart.setProduct(productService.findById(id));
                cart.setQuantity(rs.getInt("quantity"));
                carts.add(cart);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return carts;
    }

    @Override
    public boolean createCart(Cart cart) {
        try{
            Connection conn = ConnectionDB.getConnection();
            PreparedStatement pre = conn.prepareStatement("insert into Cart values (?,?,?)");
            pre.setInt(1,cart.getId());
            pre.setInt(2,cart.getProduct().getpId());
            pre.setInt(3,cart.getQuantity());
            pre.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    @Override
    public void updateCart() {

    }

    @Override
    public void deleteCart() {

    }
}
