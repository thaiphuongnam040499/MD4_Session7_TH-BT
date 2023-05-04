package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceIMPL implements IProductService{
    private static List<Product> products = new ArrayList<>();
    static {
        products.add(new Product(1,"IP7","rất đẹp",2000000,100));
        products.add(new Product(2,"IP8","rất đẹp",3000000,100));
        products.add(new Product(3,"IP10","rất đẹp",8000000,100));
        products.add(new Product(4,"IP14","rất đẹp",22000000,100));
    }
    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.set(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
