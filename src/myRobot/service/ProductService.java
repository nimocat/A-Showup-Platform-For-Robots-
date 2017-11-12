package myRobot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import myRobot.pojo.Product;
import myRobot.pojo.ProductDAO;

@Service
public class ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	public List findAll(){
		List list = productDAO.findAll();
		return list;
	}
	
	public Product findById(int Id){
		return productDAO.findById(Id);
	}
}
