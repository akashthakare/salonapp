package com.springpackage.app.controller;
import java.awt.print.Book;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springpackage.app.Model.Booking;
import com.springpackage.app.Model.Customer;
import com.springpackage.app.Model.ServiceModel;
import com.springpackage.app.Model.Shop;
import com.springpackage.app.service.BookingService;
import com.springpackage.app.service.CustomerService;
import com.springpackage.app.service.ServiceModelService;
import com.springpackage.app.service.ShopService;



@Controller
public class MVCController {


@Autowired CustomerService customerService;

@Autowired
private ShopService shopService;

@Autowired
private ServiceModelService serService;

@Autowired
BookingService bookService;


@GetMapping ("/")
public ModelAndView home() {
	System.out.println("Enter in Home");
	return new ModelAndView("index");
}
	


/*----------------New Customer Registration ----------------------*/
@RequestMapping(value="/customerRegistration",method=RequestMethod.GET)
public ModelAndView customerRegister(Model model)
{
	Customer cust=new Customer();
	model.addAttribute("customer",cust);
	return new ModelAndView("customerRegistration");
	
}
@PostMapping(value="/customerRegistration")
public ModelAndView customerRegister(@Valid @ModelAttribute("customer") Customer cust,BindingResult bindingResult)
{
	System.out.print(cust);
	if(bindingResult.hasErrors())
	{       
		ModelAndView model1 = new ModelAndView("customerRegistration");
        return model1;
    } 
	else
	{
	customerService.createCustomer(cust);
	return new ModelAndView("shopLogin");
	}
}



/*-------------------------Shop Registration ----------------------------*/

@RequestMapping(value="/shopRegistration", method=RequestMethod.GET)
public ModelAndView  shopForm(Model model)
{
	Shop shop=new Shop();
	model.addAttribute("shop",shop);
	return new ModelAndView("shopRegister");
}

@PostMapping(value="/shopRegistration")
public ModelAndView  createShop(@Valid @ModelAttribute ("shop") Shop shop)
{
	shopService.createShop(shop);
	return new ModelAndView("adminHome");
}



/*------------------------Find All Shop --------------------------------------*/
@RequestMapping(value="/findShop", method=RequestMethod.GET)
public ModelAndView findShop()
{
	Iterable<Shop> list=shopService.findShop();
	ModelAndView mav=new ModelAndView("findShop");
	mav.addObject("list", list);
	return mav;
}

/*--------------------About Particular Shop-------------------------------------------*/
@RequestMapping(value="/aboutShop/{shopId}",method=RequestMethod.GET)
public ModelAndView aboutShop(@PathVariable(value="shopId") Integer shopId)
{
	
	Shop shop=shopService.aboutShop(shopId);
	List<ServiceModel> service=serService.aboutService(shopId);
	
	ModelAndView mav= new ModelAndView("aboutShop");
	System.out.println("About Service:.......  "+service);
	mav.addObject("service", service);
	mav.addObject("shop", shop);
	return mav;
}



/*--------------------Take Appointment-------------------------------------------*/
	
@GetMapping(value="/appointment/{shopId}")
public String showAppointment(@PathVariable("shopId") Integer shopId,Model model)
{
	List <ServiceModel> list=serService.showService(shopId);
	 Shop shop=shopService.aboutShop(shopId);
	 
	 Booking book=new Booking();
	 
	 model.addAttribute("shop", shop);//use for hidden field in appointment form
	 model.addAttribute("book", book);
	 model.addAttribute("serviceList", list);//use for select dropdown list
	 System.out.println("Service List.........."+list);
	return "appointmentForm";
}

@PostMapping(value="/appointment")
public ModelAndView createAppointment(@Valid @ModelAttribute("book") Booking book,BindingResult bindingResult)
{
	
	if(bindingResult.hasErrors())
	{
		/* if error occur at then we need to show service list again so that call again serviceList */
		 List <ServiceModel> list=serService.showService(book.getShopId());
		 ModelAndView mav=new ModelAndView("appointmentForm");
		 mav.addObject("serviceList", list);
		return mav;
	}
	//Check Customer is already registred or not
	String username=book.getUsername();
	if(customerService.checkUsername(username))
	{
		Booking bo=bookService.createAppointment(book);
		
		ModelAndView mav=new ModelAndView("bookingSuccess");
		mav.addObject("book", book);
		return mav;
	}
	else
	{
		ModelAndView mav=new ModelAndView("appointmentForm");
		mav.addObject("msg", "Customer not Registred Yet..Please Register");
		return mav;
	}
	
	
}






/*---------------------Add Service---------------------------- */

@RequestMapping(value="/addService/{shopId}", method=RequestMethod.GET)
public ModelAndView addService(@PathVariable(value="shopId") Integer shopId)
{
	ModelAndView mav=new ModelAndView("addService");
	ServiceModel ser=new ServiceModel();
	mav.addObject("ser",ser);
	mav.addObject("sessionId", shopId);
	return mav;
}

@PostMapping(value="/addService/{shopId}")
public ModelAndView createShop(@PathVariable(value="shopId") Integer shopId,@ModelAttribute ("service") ServiceModel ser)
{
	String msg=serService.createService(shopId,ser);
	
	ModelAndView mav=new ModelAndView("addService");
	mav.addObject("sessionId",shopId);
	mav.addObject("msg", msg);
	return mav;

}






/*---------------------Shop Login--------------*/

@GetMapping(value="/shoplogin")
public String showLogin(Model model)
{
	Shop shop=new Shop();
	model.addAttribute("shop", shop);
	return "shopLogin";
}

@PostMapping(value="/shoplogin")
public ModelAndView shoplogin(@ModelAttribute ("shop") Shop shop)
{
	Shop sh=shopService.shopLogin(shop);
	if(sh==null)
	{
		ModelAndView mav=new ModelAndView("shopLogin");
		mav.addObject("msg", "record not found");
	  return mav;
	}
	System.out.println("Both compariosn "+sh.getPassword().equals(shop.getPassword()));
	 if((sh.getUsername().equals(shop.getUsername()) & sh.getPassword().equals(shop.getPassword())))
	{
		 ModelAndView mav=new ModelAndView("adminHome");
		mav.addObject("sessionId", sh.getShopId());
	    mav.addObject("shop", sh);
		return mav;
	}
	else
	{
		ModelAndView mav=new ModelAndView("shopLogin");
		mav.addObject("msg", "Password or Username is incorect");
		return mav;
	}
	
}

/*---------------------Show Appointment---------*/

@RequestMapping(value="/showAppointment/{shopId}",method=RequestMethod.GET)
public ModelAndView showAppointment(@PathVariable(value="shopId") Integer shopId)
{
	
	ModelAndView mav=new ModelAndView("showAppointment");
	
	List<Booking> list=bookService.showAppointment(shopId);
	mav.addObject("list", list);
	mav.addObject("sessionId", shopId);
	System.out.println("show Appointment processing..........."+list);
	return mav;
}




/*------------------Show Shop Services---------------------*/
@RequestMapping(value="/yourServices/{shopId}",method=RequestMethod.GET)
@ResponseBody
public ModelAndView showService(@PathVariable("shopId") Integer shopId)
{
	 List <ServiceModel> list=serService.showService(shopId);
	 System.out.println("Passing shop Id :"+shopId);
	 ModelAndView mav=new ModelAndView("listService");
	 mav.addObject("sessionId", shopId);//use session as id
	 mav.addObject("list", list);
	return mav;
}

/*------------------Admin Home ---------------------*/

@RequestMapping(value="/adminHome/{shopId}",method=RequestMethod.GET)
public ModelAndView adminHome(@PathVariable(value="shopId") Integer shopId)
{
	Shop shop=shopService.aboutShop(shopId);
	ModelAndView mav=new ModelAndView("adminHome");
	
	mav.addObject("sessionId", shopId);
	mav.addObject("shop", shop);
	
	return mav;
}






/* ---------Search Shop--------*/
/*
@GetMapping(value="/searchShop")
public ModelAndView searchShop()
{	
	return new ModelAndView("searchShop");
}
@RequestMapping(value="/searchShop")
public void searchShop(Model model,@RequestParam("time1")String time1,@RequestParam("time2")String time2) throws ParseException
{
	System.out.println("Enter in Searching............");
	System.out.println(time1+"  "+time2);
	List<Owner> list=ownerService.searchShop(time1,time2);
	System.out.println(list);
}*/

}