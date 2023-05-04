package service;

import model.Cart;

import java.util.List;

public interface ICartService {
    List<Cart> findAll();
    boolean createCart(Cart cart);
    void updateCart();
    void deleteCart();
}
