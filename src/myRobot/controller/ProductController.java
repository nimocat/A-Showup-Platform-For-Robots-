package myRobot.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import myRobot.pojo.ProductDAO;
import myRobot.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
    private ProductService productService;
	
    @RequestMapping("/show")
    public ModelAndView showAction(HttpServletRequest req, HttpServletResponse res)
    		throws IOException, ServletException{
    		ModelAndView mv = new ModelAndView("index");
			List list = productService.findAll();
    		mv.addObject("proAL", list);
    	    return mv;
    }//return a ModelAndView object
}
