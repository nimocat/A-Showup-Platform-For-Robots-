package myRobot.service;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import myRobot.pojo.Cart;
import myRobot.pojo.CartDAO;
import myRobot.pojo.Order;
import myRobot.pojo.OrderDAO;

@Service
public class CartService {
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private OrderDAO orderDAO;
	
	public List ShowCart(String username){
		List cartAL = cartDAO.findByUsername(username);
		return cartAL;
	}
	
	public int addCart(int Id, String username, int number, int amount){
		int flag = 0;
		int remain = number - amount;
		if(remain>=0){
			try{
				cartDAO.save(new Cart(username,Id,amount));
				flag = 1;
			}catch (Exception e){
				e.printStackTrace();
			}
		}
		return flag;
	}
	
	public List findCart(String username){
		return cartDAO.findByUsername(username);
	}
	
	public void deleteCart(int Id){
		cartDAO.delete(cartDAO.findById(Id));
	}
	
	public String finishOrder(String username){
		String ORDERNUM;
		List<Cart> list = (List<Cart>)cartDAO.findByUsername(username);
		Calendar now = Calendar.getInstance();
		String YEAR = String.valueOf(now.get(now.YEAR));
		String MONTH = String.valueOf(now.get(now.MONTH)+1);
		String DAY = String.valueOf(now.get(now.DATE));
		int a = (int)(Math.random()*(9999-1000+1))+1000;//order table's operations here:2017/9/16
		ORDERNUM = 1+YEAR.substring(2,4)+""+MONTH+""+DAY+a;
		try{
			for(Cart cart: list){
			Order order = new Order();
			order.setNumber(cart.getNumber());
			order.setOrdernum(ORDERNUM);
			order.setUsername(cart.getUsername());
			order.setProId(cart.getProId());
			cartDAO.delete(cart);
			orderDAO.save(order);
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return ORDERNUM;
	}
}
