package myRobot.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import myRobot.service.CartService;
import myRobot.service.ProductService;
import com.alibaba.fastjson.JSON;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/showcart")
	public ModelAndView showCart(HttpServletRequest req, HttpServletResponse res, @RequestParam("username") String username)
			throws IOException, ServletException{
		ModelAndView mv = new ModelAndView("shoppingcart");

		List cartList = cartService.findCart(username);
		List productList = productService.findAll();
		mv.addObject("cartAL",cartList);
		mv.addObject("proAL",productList);
		req.getSession().setAttribute("username",username);
		return mv;
	}
	
	@RequestMapping(value = "/addcart", method = RequestMethod.POST)
	public void addCart(HttpServletRequest req, HttpServletResponse res)
    		throws IOException, ServletException{
		int Id = Integer.parseInt(req.getParameter("id"));
		int number = Integer.parseInt(req.getParameter("number"));
		String username = req.getParameter("username");
		
		int amount = Integer.parseInt(req.getParameter("amount"));
		int flag = cartService.addCart(Id, username, number, amount);
		PrintWriter out = res.getWriter();
		out.print(flag);out.close();
	}
	
	@RequestMapping(value="/deletecart")
	public ModelAndView deleteCart(@RequestParam("Id") int Id, @RequestParam("username") String username){
		cartService.deleteCart(Id);
		System.out.println(username);
		ModelAndView mv = new ModelAndView("redirect:/showcart");
		mv.addObject("username",username);
		return mv;
	}
	
	@RequestMapping(value="/order")
	public void order(HttpServletRequest req, HttpServletResponse res,@RequestParam("username") String username)
    		throws IOException, ServletException{
			System.out.println("controller");
			String data = cartService.finishOrder(username);
		    PrintWriter printWriter = null;
		    try {
		      printWriter = res.getWriter();
		      printWriter.print(data);
		    } catch (IOException ex) {
		      ex.printStackTrace();
		    } finally {
		      if (printWriter != null) {
		        printWriter.flush();
		        printWriter.close();
		      }
		    }
			
	}
}
