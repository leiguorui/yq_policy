package com.degree.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.degree.base.BaseController;
import com.degree.domain.Aoto;
import com.degree.domain.Customer;
import com.degree.domain.Policy;
import com.degree.domain.Saler;
import com.degree.domain.User;
import com.degree.persistence.AotoDao;
import com.degree.persistence.CustomerDao;
import com.degree.persistence.PolicyDao;
import com.degree.persistence.PolicyVoDao;
import com.degree.persistence.SalerDao;
import com.degree.persistence.UserDao;
import com.degree.utils.GenerateSequenceUtil;
import com.degree.utils.UtilDate;

@Controller
public class PolicyController extends BaseController{
	@Autowired
	private PolicyDao policyDao;
	@Autowired
	private AotoDao aotoDao;
	@Autowired
	private CustomerDao customerDao;
	@Autowired
	private SalerDao salerDao;
	@Autowired
	private PolicyVoDao policyVoDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	HttpSession session;

	@RequestMapping(value = "/addPolicy.html", method = RequestMethod.GET)
	public String addPolicy(ModelMap model){
		Policy policy = new Policy();
		model.addAttribute("policy", policy);
		return "add_policy";
	}
	
	@RequestMapping(value = "/left_menu.html", method = RequestMethod.GET)
	public ModelAndView left_menu(String type, String user) {
		ModelAndView mav = new ModelAndView("leftmenu", "type", type);
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping(value = "/header.html", method = RequestMethod.GET)
	public ModelAndView header(HttpServletRequest request) {
		User user2 = getSessionUser(request);
		return new ModelAndView("header");
	}
	
	@RequestMapping(value = "/breadcrumb.html", method = RequestMethod.GET)
	public ModelAndView breadcrumb() {
		return new ModelAndView("breadcrumb");
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	@ResponseBody
	public String add(@ModelAttribute(value="policy") Policy policy,BindingResult result){
		//validator.validate(user, result);
		policy.setTime(UtilDate.getDate());
		policyDao.savePolicy(policy);
		return "ok";
	}
	
	@RequestMapping(value="/addAoto", method=RequestMethod.POST)
	@ResponseBody
	public String updateAoto(@ModelAttribute(value="aoto") Aoto aoto,
			HttpServletRequest request, BindingResult result){
		//validator.validate(user, result);
		
		String id = GenerateSequenceUtil.generateSequenceNo("AO",
				aotoDao.getLastAoto()==null?null:aotoDao.getLastAoto().getId());
		aoto.setId(id);
		aoto.setTime(UtilDate.getDate());
		aotoDao.save(aoto);
		
		//更新保单里车辆信息
		Policy policy = new Policy();
		policy.setId(request.getParameter("policyid"));
		policy.setCar_id(id);
		policyDao.updateAotoid(policy); 
		return "ok";
	}
	
	@RequestMapping(value="/managePolicy", method=RequestMethod.GET)
	public ModelAndView managePolicy(){
		ModelAndView mv = new ModelAndView("manage_policy");
		mv.addObject("policyVo", policyVoDao.getAllPolicyVo("2000-00-00", "2100-00-00", 
				"2000-00-00", "2100-00-00", "%%", "%%", "%%", "%%", "%%"));
		return mv;
	}
	
	@RequestMapping(value="/managePolicy", method=RequestMethod.POST)
	public ModelAndView managePolicy(String beginFrom,String beginTo,
			String endFrom,String endTo,String jiaoNo,String shangNo,
			String cNumber,String cName,String sName){
		ModelAndView mv = new ModelAndView("manage_policy");
		if(beginFrom == null || "".equals(beginFrom)){
			beginFrom = "2000-00-00";
		}
		if(beginTo == null || "".equals(beginTo)){
			beginTo = "2100-00-00";
		}
		if(endFrom == null || "".equals(endFrom)){
			endFrom = "2000-00-00";
		}
		if(endTo == null || "".equals(endTo)){
			endTo = "2100-00-00";
		}
		mv.addObject("policyVo", policyVoDao.getAllPolicyVo(beginFrom, beginTo, 
				endFrom, endTo, "%"+jiaoNo+"%", "%"+shangNo+"%", "%"+cNumber+"%",
				"%"+cName+"%", "%"+sName+"%"));
		return mv;
	}
	
	@RequestMapping(value="/detailPolicy", method=RequestMethod.GET)
	public ModelAndView detailPolicy(@RequestParam("id")String id){
		ModelAndView mv = new ModelAndView("detail_policy");
		Policy policy = policyDao.getPolicyById(id);
		mv.addObject("policy", policy);
		mv.addObject("aoto", aotoDao.getAotoById(policy.getCar_id()));
		mv.addObject("customer", customerDao.getCustomerById(policy.getCustomer_id()));
		mv.addObject("saler", salerDao.getSalerById(policy.getSaler_id()));
		return mv;
	}
	
	@RequestMapping(value="/addPolicyPopup", method=RequestMethod.GET)
	public String addPolicyPopup(ModelMap model){
		Policy policy = new Policy();
		policy.setId(GenerateSequenceUtil.generateSequenceNo("BD",
				policyDao.getLastPolicy()==null?null:policyDao.getLastPolicy().getId()));
		model.addAttribute("policy", policy);
		Aoto aoto = new Aoto();
		model.addAttribute("aoto", aoto);
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		Saler saler = new Saler();
		model.addAttribute("saler", saler);
		return "add_policy_popup";
	}
	
	//商业险保费/折扣率
	@RequestMapping(value="/updateShang", method=RequestMethod.POST)
	@ResponseBody
	public String updateShang(@ModelAttribute(value="policy") Policy policy,
			HttpServletRequest request, BindingResult result){
		policyDao.updateShang(policy); 
		return "ok";
	}
	
	@RequestMapping(value="/addCustomer", method=RequestMethod.POST)
	@ResponseBody
	public String addCustomer(@ModelAttribute(value="customer") Customer customer,
			HttpServletRequest request, BindingResult result){
		String id = GenerateSequenceUtil.generateSequenceNo("CU",
				customerDao.getLastCustomer()==null?null:customerDao.getLastCustomer().getId());
		customer.setId(id);
		customer.setTime(UtilDate.getDate());
		customerDao.save(customer);
		
		//更新保单里用户信息
		Policy policy = new Policy();
		policy.setId(request.getParameter("policyid"));
		policy.setCustomer_id(id);
		policyDao.updateCustomerId(policy); 
		return "ok";
	}
	
	@RequestMapping(value="/addSaler", method=RequestMethod.POST)
	@ResponseBody
	public String addCustomer(@ModelAttribute(value="saler") Saler saler,
			HttpServletRequest request, BindingResult result){
		String id = GenerateSequenceUtil.generateSequenceNo("SA",
				salerDao.getLastSaler()==null?null:salerDao.getLastSaler().getId());
		saler.setId(id);
		saler.setTime(UtilDate.getDate());
		salerDao.save(saler);
		
		//更新保单里用户信息
		Policy policy = new Policy();
		policy.setId(request.getParameter("policyid"));
		policy.setSaler_id(id);
		policyDao.updateSalerid(policy); 
		return "ok";
	}
	
	@RequestMapping(value="/deletePolicy", method=RequestMethod.GET)
	public String addCustomer(@ModelAttribute(value="id") String id){
		policyDao.deletePolicy(id); 
		return "redirect:managePolicy.html";
	}
	
	@RequestMapping(value="/updatePolicy", method=RequestMethod.POST)
	@ResponseBody
	public String updatePolicy(@ModelAttribute(value="policy") Policy policy){
		policyDao.updatePolicy(policy); 
		return "ok";
	}

	@RequestMapping(value="/updateAoto", method=RequestMethod.POST)
	@ResponseBody
	public String updateAoto(@ModelAttribute(value="aoto") Aoto aoto){
		aotoDao.update(aoto); 
		return "ok";
	}
	
	@RequestMapping(value="/updateCustomer", method=RequestMethod.POST)
	@ResponseBody
	public String updateCustomer(@ModelAttribute(value="customer") Customer customer){
		customerDao.update(customer); 
		return "ok";
	}
	
	@RequestMapping(value="/updateSaler", method=RequestMethod.POST)
	@ResponseBody
	public String updateSaler(@ModelAttribute(value="saler") Saler saler){
		salerDao.update(saler); 
		return "ok";
	}
	
	@RequestMapping(value="/updatePolicy", method=RequestMethod.GET)
	public ModelAndView updatePolicy(@ModelAttribute(value="id") String id){
		ModelAndView mav = new ModelAndView("update_policy_popup");
		Policy policy = policyDao.getPolicyById(id);
		mav.addObject("policy", policy);
		mav.addObject("aoto", aotoDao.getAotoById(policy.getCar_id()));
		mav.addObject("customer", customerDao.getCustomerById(policy.getCustomer_id()));
		mav.addObject("saler", salerDao.getSalerById(policy.getSaler_id()));
		return mav;
	}

	@RequestMapping(value="/searchPolicy", method=RequestMethod.POST)
	@ResponseBody
	public String searchPolicy(String beginDateFrom,String storeNo,String beginDateTo,
			String endDateFrom,String endDateTo,String shangyeNo,
			String jiangqiangNo,String customerNo,String salerno){
		System.out.println(beginDateFrom);
		return "return";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(HttpServletRequest request, String username, String password){
		User user = userDao.getUserByUsername(username);
		if(user == null){
			return "nobody";
		}else if(!password.equals(user.getPassword())){
			return "false";
		}else{
			session.setAttribute("user", user);
			setSessionUser(request,user);
			User user2 = getSessionUser(request);
			return "ok";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/validateLogin", method=RequestMethod.POST)
	public String validateLogin(){
		return "ok";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(){
		return "login";
	}
	
	@RequestMapping(value="/systemManage", method=RequestMethod.GET)
	public String systemManage(){
		return "manage_system";
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public String addUser(ModelMap model){
		User user = new User();
		model.addAttribute("user", user);
		return "add_user";
	}
	
	@ResponseBody
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String addUser(String name, String account, String store){
		
		return "add_user";
	}
}
