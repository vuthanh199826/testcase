package model;

public class Product {
private int id;
private String model;
private String name;
private int price;
private String img;
private String describe;


    public Product(int id, String model, String name, int price, String img, String describe) {
        this.id = id;
        this.model = model;
        this.name = name;
        this.price = price;
        this.img = img;
        this.describe = describe;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", img='" + img + '\'' +
                ", describe='" + describe + '\'' +
                '}';
    }
}
