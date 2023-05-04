package model;

public class Cart {
    private int id;
    Product product;
    private int Quantity;

    public Cart() {
    }

    public Cart(int id, Product product, int quantity) {
        this.id = id;
        this.product = product;
        this.Quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

}
