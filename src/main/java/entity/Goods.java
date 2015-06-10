package entity;
// Generated 09.06.2015 22:06:06 by Hibernate Tools 4.3.1


import java.math.BigDecimal;

public class Goods  implements java.io.Serializable {


     private short goodId;
     private String name;
     private BigDecimal price;

    public Goods() {
    }

    public Goods(short goodId, String name, BigDecimal price) {
       this.goodId = goodId;
       this.name = name;
       this.price = price;
    }
   
    public short getGoodId() {
        return this.goodId;
    }
    
    public void setGoodId(short goodId) {
        this.goodId = goodId;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public BigDecimal getPrice() {
        return this.price;
    }
    
    public void setPrice(BigDecimal price) {
        this.price = price;
    }




}


