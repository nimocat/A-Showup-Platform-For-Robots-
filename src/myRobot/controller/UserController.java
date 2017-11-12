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
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import myRobot.service.ProductService;
import myRobot.service.UserinfoService;

@Controller
public class UserController {
    @Autowired
    private UserinfoService userinfoService;

    
    @RequestMapping("/login")
    public String loginAction(HttpServletRequest req, HttpServletResponse res) 
    		throws IOException, ServletException{
		String username = req.getParameter("username");
		String password = req.getParameter("password");
    	int flag = userinfoService.validate(username, password);
    	if(flag==1){
    		req.getSession().setAttribute("username",username);
    		return "success";
    	}
    	return "error";
    }//at that method we use HTTP to get the param instead of spring mvc's @RequestParam
     //because we want to keep the login state in session which must use HTTP 
    //so at the login and register method we use the same way to get params.
    
    @RequestMapping("/register")
    public String signupAction(HttpServletRequest req, HttpServletResponse res)
    		throws IOException, ServletException{
			String username = req.getParameter("username");
			String password = req.getParameter("password");
    		String emailaddress = req.getParameter("emailaddress");
    		userinfoService.register(username, password, emailaddress);
    		req.getSession().setAttribute("username", username);
    		return "success";
    }
    
    @RequestMapping("/change")
    public String changeAction(HttpServletRequest req, HttpServletResponse res)
    		throws IOException, ServletException{
    		String username = req.getParameter("username");
    		String password = req.getParameter("password");
    		String emailaddress = req.getParameter("emailaddress");
    		int flag = userinfoService.change(username, password, emailaddress);
    		if(flag==1){
    			req.getSession().setAttribute("username", username);
    			return "success";
    		}
    		return "error";
    }
    
    @RequestMapping(value="/getSession", method = RequestMethod.POST)
    public String getSession(HttpServletRequest req, HttpServletResponse res)
    		throws IOException, ServletException{
    	String username = req.getSession().getAttribute("username").toString();
    	System.out.println(username);
    	if(username!=null)
    		return username;
    	return "null";
    }
    

}