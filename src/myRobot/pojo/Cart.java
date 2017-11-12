package myRobot.pojo;

import org.hibernate.annotations.Entity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.stereotype.Component;

import myRobot.service.ProductService;

/**
 * Cart entity. @author MyEclipse Persistence Tools
 */
@Component
public class Cart extends AbstractCart implements java.io.Serializable {

    /** default constructor */
    public Cart() {
    }

    
    /** full constructor */
    public Cart(String username, Integer proId, Integer number) {
        super(username, proId, number);        
    }
    
   public Product getPro(){
	   ProductService productService = new ProductService();
	   return productService.findById(this.getProId());
   }
   
   public int getAmount(){
	   return this.getNumber();
   }
   public double getTotalPrice(){
	   ProductService productService = new ProductService();
	   double sum = productService.findById(this.getId()).getPrice();
	   sum *= this.getNumber(); 
	   return sum;
   }
}
