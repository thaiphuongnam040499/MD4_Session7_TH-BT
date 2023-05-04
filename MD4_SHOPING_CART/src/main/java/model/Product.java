package model;

public class Product {
    private int pId;
    private String pName;
    private String pImage;
    private String pDes;
    private float pPrice;
    private boolean pStatus;

    public Product() {
    }

    public Product(int pId, String pName,String pImage, String pDes, float pPrice, boolean pStatus) {
        this.pId = pId;
        this.pName = pName;
        this.pImage = pImage;
        this.pDes = pDes;
        this.pPrice = pPrice;
        this.pStatus = pStatus;
    }

    public String getpImage() {
        return pImage;
    }

    public void setpImage(String pImage) {
        this.pImage = pImage;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpDes() {
        return pDes;
    }

    public void setpDes(String pDes) {
        this.pDes = pDes;
    }

    public float getpPrice() {
        return pPrice;
    }

    public void setpPrice(float pPrice) {
        this.pPrice = pPrice;
    }

    public boolean ispStatus() {
        return pStatus;
    }

    public void setpStatus(boolean pStatus) {
        this.pStatus = pStatus;
    }
}
