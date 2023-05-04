package model;

public class Product {
    private int id;
    private String productName;
    private String description;
    private float exportPrice;
    private int quantity;

    public Product() {
    }

    public Product(int id, String productName, String description, float exportPrice, int quantity) {
        this.id = id;
        this.productName = productName;
        this.description = description;
        this.exportPrice = exportPrice;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getExportPrice() {
        return exportPrice;
    }

    public void setExportPrice(float exportPrice) {
        this.exportPrice = exportPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
