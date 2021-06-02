package practice;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class HomepageListener
 *
 */
//@WebListener
public class HomepageListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public HomepageListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	 ServletContext application = sce.getServletContext();
    	 Map<String, Account> map = new HashMap<>();
    	// List<Friend> list = new ArrayList<>();
    	 List<Board> list1 = new ArrayList<>();
    	 
    	// application.setAttribute("list", list);
    	 application.setAttribute("list1", list1);
    }
	
}
