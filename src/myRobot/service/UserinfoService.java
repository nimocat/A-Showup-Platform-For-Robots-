package myRobot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javassist.bytecode.Descriptor.Iterator;
import myRobot.pojo.ProductDAO;
import myRobot.pojo.Userinfo;
import myRobot.pojo.UserinfoDAO;

@Service
public class UserinfoService {
	@Autowired
	private UserinfoDAO userinfoDAO;
	
	public int validate(String username,String password) {
		int flag = 0;
		Userinfo user = new Userinfo();
		user.setUsername(username);
		user.setPassword(password);
		List list = userinfoDAO.findByExample(user);
		if(list.size()!=0){
			flag = 1;
		}
		return flag;
	}
	
	public void register(String username,String password,String emailaddress) {
		Userinfo user = new Userinfo(username,password,emailaddress);
		userinfoDAO.save(user);
	}
	
	public int change(String username, String emailaddress, String password) {
		Userinfo user = new Userinfo();
		user.setUsername(username);
		user.setEmailaddress(emailaddress);
		List <Userinfo> list = userinfoDAO.findByExample(user);
		if(list.size()!=0){
			user.setPassword(password);
			userinfoDAO.merge(user);
			return 1;
		}else{
			return 0;
		}
	}
}
