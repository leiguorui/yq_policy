package com.degree.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.degree.cons.Cons;
import com.degree.domain.Aoto;
import com.degree.domain.Customer;
import com.degree.domain.Policy;
import com.degree.domain.Saler;
import com.degree.domain.Store;
import com.degree.domain.User;
import com.degree.model.PolicyDetail;
import com.degree.persistence.AotoDao;
import com.degree.persistence.CustomerDao;
import com.degree.persistence.PolicyDao;
import com.degree.persistence.PolicyDetailMapper;
import com.degree.persistence.PolicyMapper;
import com.degree.persistence.PolicyVoDao;
import com.degree.persistence.SalerDao;
import com.degree.persistence.StoreDao;
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
	private StoreDao storeDao;
	@Autowired
	HttpSession session;
	@Autowired
	private PolicyMapper policyMapper;
	@Autowired
	private PolicyDetailMapper policyDetailMapper;

	@RequestMapping(value = "/addPolicy.html", method = RequestMethod.GET)
	public String addPolicy(ModelMap model,HttpServletRequest request){
		model.addAttribute("time", UtilDate.getDateFormatter());
		model.addAttribute("user", getSessionUser(request));
		model.addAttribute("policyId", GenerateSequenceUtil.generateSequenceNo("BD",
				policyMapper.getLastPolicy()==null?null:policyMapper.getLastPolicy().getrId()));
		return "add_policy";
	}
	
	
	@RequestMapping(value = "/addPolicy.html", method = RequestMethod.POST)
//	public String addPolicy(HttpServletRequest request,String id,
//			Date SaveDateTime,String ServiceType,String InsuranceCompany,
//			String IssuingType,String DeliveyName,
//			String InsuredName,String InsuredPhone,String CarNumber,
//			String ManufactureType,String CarframeNumber,
//			String EngineNumber,Date FirstRegisterNumber,String ClientSubjection,
//			String BuyType,String Saler,String IssuingName,Date IssuingDate,String GiftType,
//			Double[] Charge, String[] CommerceNumber, String[] Discount,
//			String[] Pending1, String[] Pending2, String[] FormType, String[] CommerceBegin){
	public String addPolicy(HttpServletRequest request) throws ParseException {
		com.degree.model.Policy policy = new com.degree.model.Policy();
		policy.setrId(request.getParameter("id"));
		policy.setrBuytype(request.getParameter("BuyType"));
		policy.setrCarframenumber(request.getParameter("CarframeNumber"));
		policy.setrCarnumber(request.getParameter("CarNumber"));
		policy.setrClientsubjection(request.getParameter("ClientSubjection"));
		policy.setrDeliveyname(request.getParameter("DeliveyName"));
		policy.setrEnginenumber(request.getParameter("EngineNumber"));
		policy.setrFirstregisternumber( new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("FirstRegisterNumber")));
		policy.setrGifttype(request.getParameter("GiftType"));
		policy.setrInsurancecompany(request.getParameter("InsuranceCompany"));
		policy.setrInsuredname(request.getParameter("InsuredName"));
		policy.setrInsuredphone(request.getParameter("InsuredPhone"));
		policy.setrIssuingdate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("IssuingDate")));
		policy.setrIssuingname(request.getParameter("IssuingName"));
		policy.setrIssuingtype(request.getParameter("IssuingType"));
		policy.setrManufacturetype(request.getParameter("ManufactureType"));
		policy.setrSaler(request.getParameter("Saler"));
		policy.setrSavedatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(request.getParameter("SaveDateTime")));
		policy.setrServicetype(request.getParameter("ServiceType"));
		policy.setR1(getSessionUser(request).getName());  //门店
		policyMapper.insertSelective(policy);  //添加保单

		String[] Charge = request.getParameterValues("Charge");
		String[] CommerceNumber =  request.getParameterValues("CommerceNumber");
		String[] Discount =  request.getParameterValues("Discount");
		String[] Pending1  =  request.getParameterValues("Pending1");
		String[] Pending2  =  request.getParameterValues("Pending2");
		String[] FormType  =  request.getParameterValues("FormType");
		String[] commercebegin =  request.getParameterValues("CommerceBegin");
		
		PolicyDetail policyDetail = new PolicyDetail();
		for(int n=0; n<6; n++){
			try{         //捕捉Double.parseDouble数组为空时
				policyDetail.setCharge(Double.parseDouble(Charge[n]));
				policyDetail.setCommercebegin(new SimpleDateFormat("yyyy-MM-dd").parse(commercebegin[n]));
				policyDetail.setCommercenumber(CommerceNumber[n]);
				policyDetail.setDiscount(Double.parseDouble(Discount[n]));
				policyDetail.setPending1(Double.parseDouble(Pending1[n]));
				policyDetail.setPending2(Double.parseDouble(Pending2[n]));
				policyDetail.setFormtype(FormType[n]);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				policyDetail.setFormid(request.getParameter("id"));
				policyDetail.setYearnumer(n+1);
				policyDetailMapper.insertSelective(policyDetail);		
			}
		}	

		return "add_policy";
	}
	
	@RequestMapping(value = "/updatePolicy.html", method = RequestMethod.POST)
	public String updatePolicy(HttpServletRequest request) throws ParseException {
		com.degree.model.Policy policy = new com.degree.model.Policy();
		policy.setrId(request.getParameter("id"));
		policy.setrBuytype(request.getParameter("BuyType"));
		policy.setrCarframenumber(request.getParameter("CarframeNumber"));
		policy.setrCarnumber(request.getParameter("CarNumber"));
		policy.setrClientsubjection(request.getParameter("ClientSubjection"));
		policy.setrDeliveyname(request.getParameter("DeliveyName"));
		policy.setrEnginenumber(request.getParameter("EngineNumber"));
		policy.setrFirstregisternumber( new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("FirstRegisterNumber")));
		policy.setrGifttype(request.getParameter("GiftType"));
		policy.setrInsurancecompany(request.getParameter("InsuranceCompany"));
		policy.setrInsuredname(request.getParameter("InsuredName"));
		policy.setrInsuredphone(request.getParameter("InsuredPhone"));
		policy.setrIssuingdate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("IssuingDate")));
		policy.setrIssuingname(request.getParameter("IssuingName"));
		policy.setrIssuingtype(request.getParameter("IssuingType"));
		policy.setrManufacturetype(request.getParameter("ManufactureType"));
		policy.setrSaler(request.getParameter("Saler"));
		policy.setrSavedatetime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(request.getParameter("SaveDateTime")));
		policy.setrServicetype(request.getParameter("ServiceType"));
		policy.setR1(getSessionUser(request).getName());  //门店
		policyMapper.updateByPrimaryKeySelective(policy);  //添加保单

		String[] Charge = request.getParameterValues("Charge");
		String[] CommerceNumber =  request.getParameterValues("CommerceNumber");
		String[] Discount =  request.getParameterValues("Discount");
		String[] Pending1  =  request.getParameterValues("Pending1");
		String[] Pending2  =  request.getParameterValues("Pending2");
		String[] FormType  =  request.getParameterValues("FormType");
		String[] commercebegin =  request.getParameterValues("CommerceBegin");
		
		PolicyDetail policyDetail = new PolicyDetail();
		for(int n=0; n<6; n++){
			try{         //捕捉Double.parseDouble数组为空时
				policyDetail.setCharge(Double.parseDouble(Charge[n]));
				policyDetail.setCommercebegin(new SimpleDateFormat("yyyy-MM-dd").parse(commercebegin[n]));
				policyDetail.setCommercenumber(CommerceNumber[n]);
				policyDetail.setDiscount(Double.parseDouble(Discount[n]));
				policyDetail.setPending1(Double.parseDouble(Pending1[n]));
				policyDetail.setPending2(Double.parseDouble(Pending2[n]));
				policyDetail.setFormtype(FormType[n]);
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				policyDetail.setFormid(request.getParameter("id"));
				policyDetail.setYearnumer(n+1);
				policyDetailMapper.updateByPrimaryKeySelective(policyDetail);		
			}
		}	

		return "add_policy";
	}
	
	@RequestMapping(value = "/left_menu.html", method = RequestMethod.GET)
	public ModelAndView left_menu(String type, String userid) {
		ModelAndView mav = new ModelAndView("leftmenu", "type", type);
		mav.addObject("user", userDao.getUserById(userid));
		return mav;
	}
	
	@RequestMapping(value = "/header.html", method = RequestMethod.GET)
	public ModelAndView header(HttpServletRequest request) {
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
	public ModelAndView managePolicy(HttpServletRequest request){
		ModelAndView mv = new ModelAndView("manage_policy");
		mv.addObject("policys", 
				policyMapper.getAllPolicy("2000-00-00", "2100-00-00", 
						"%%", "2000-00-00", "2100-00-00", 
						"2000-00-00", "2100-00-00", "%%", "%%", 
						"%%", "%%", "0", "%"+getSessionUser(request).getName()+"%", "%%"));
		return mv;
	}
	
	@RequestMapping(value="/managePolicy", method=RequestMethod.POST)
	public ModelAndView managePolicy(String CommerceBeginFrom,String CommerceBeginEnd,
			String CommerceNumber,String SALI, String FirstRegisterNumberFrom,
			String FirstRegisterNumberEnd,String IssuingDateFrom,
			String IssuingDateEnd,String DeliveyName,String InsuredName,
			String Saler,String CarNumber,HttpServletRequest request){
		ModelAndView mv = new ModelAndView("manage_policy");
		if(CommerceBeginFrom == null || "".equals(CommerceBeginFrom)){
			CommerceBeginFrom = "2000-00-00";
		}
		if(CommerceBeginEnd == null || "".equals(CommerceBeginEnd)){
			CommerceBeginEnd = "2100-00-00";
		}
		if(FirstRegisterNumberFrom == null || "".equals(FirstRegisterNumberFrom)){
			FirstRegisterNumberFrom = "2000-00-00";
		}
		if(FirstRegisterNumberEnd == null || "".equals(FirstRegisterNumberEnd)){
			FirstRegisterNumberEnd = "2100-00-00";
		}
		if(IssuingDateFrom == null || "".equals(IssuingDateFrom)){
			IssuingDateFrom = "2000-00-00";
		}
		if(IssuingDateEnd == null || "".equals(IssuingDateEnd)){
			IssuingDateEnd = "2100-00-00";
		}
		mv.addObject("policys", policyMapper.getAllPolicy(CommerceBeginFrom, 
				CommerceBeginEnd, "%"+CommerceNumber+"%", FirstRegisterNumberFrom, 
				FirstRegisterNumberEnd, IssuingDateFrom, IssuingDateEnd, 
				"%"+DeliveyName+"%", "%"+InsuredName+"%", "%"+Saler+"%", "%"+CarNumber+"%", 
				"0", "%"+getSessionUser(request).getName()+"%", "%"+SALI+"%"));
		return mv;
	}
	
	@RequestMapping(value="/detailPolicy", method=RequestMethod.GET)
	public ModelAndView detailPolicy(@RequestParam("id")String id){
		ModelAndView mv = new ModelAndView("policy_detail");
		com.degree.model.Policy policy = policyMapper.selectByPrimaryKey(id);
		mv.addObject("policy", policy);
		mv.addObject("policyDetail", policyDetailMapper.selectPolicyDetailsByFormId(policy.getrId()));
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
//		policyDao.deletePolicy(id); 
		com.degree.model.Policy policy = new com.degree.model.Policy();
		policy.setrId(id);
		policy.setrIsdeleted(1);
		policyMapper.updateByPrimaryKeySelective(policy);
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
			setSessionUser(request,user);
			return user.getId();
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/validateLogin", method=RequestMethod.POST)
	public String validateLogin(){
		return "ok";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute(Cons.USER_CONTEXT);
		return "redirect:login.html";
	}
	
	@RequestMapping(value="/systemManage", method=RequestMethod.GET)
	public String systemManage(ModelMap model){
		int userSum = userDao.getAllUser().size();
		model.addAttribute("userSum", userSum);
		model.addAttribute("carSum", aotoDao.getAll().size());
		model.addAttribute("cusSum", customerDao.getAll().size());
		return "manage_system";
	}
	
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public String addUser(ModelMap model){
		User user = new User();
		model.addAttribute("user", user);
		model.addAttribute("stores", storeDao.getAll());
		return "add_user";
	}
	
	@ResponseBody
	@RequestMapping(value="/addUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute(value="user") User user){
		user.setPassword("123456");
		user.setIsdeleted("0");
		user.setTime(UtilDate.getDate());
		userDao.saveUser(user);
		return "add_user";
	}
	
	@RequestMapping(value="/manageUser", method=RequestMethod.GET)
	public String manageUser(ModelMap model){
		model.addAttribute("users", userDao.getAllUser());
		return "manage_user";
	}
	
	@RequestMapping(value="/manageCar", method=RequestMethod.GET)
	public String manageCar(ModelMap model){
		model.addAttribute("cars", aotoDao.getAll());
		return "manage_car";
	}
	
	@RequestMapping(value="/manageCustomer", method=RequestMethod.GET)
	public String manageCustomer(ModelMap model){
		model.addAttribute("customers", customerDao.getAll());
		return "manage_customer";
	}
	
	/**
	 * 用户信息设置
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/settingUser", method=RequestMethod.GET)
	public String settingUser(ModelMap model,HttpServletRequest request){
		model.addAttribute("user", getSessionUser(request));
		return "setting_user";
	}
	
	@ResponseBody
	@RequestMapping(value="/settingUser", method=RequestMethod.POST)
	public String settingUser(HttpServletRequest request, User user){
		setSessionUser(request,user);
		userDao.updateUser(user);
		return "ok";
	}
	
	@RequestMapping(value="/addStore", method=RequestMethod.GET)
	public String addStore(ModelMap model,HttpServletRequest request){
		model.addAttribute("store", new Store());
		return "add_store";
	}
	
	@ResponseBody
	@RequestMapping(value="/addStore", method=RequestMethod.POST)
	public String addStore(HttpServletRequest request, Store store){
		String id = GenerateSequenceUtil.generateSequenceNo("ST",
				storeDao.getLast()==null?null:storeDao.getLast().getId());
		store.setId(id);
		store.setTime(UtilDate.getDate());
		storeDao.save(store);
		return "ok";
	}
	
	@RequestMapping(value="/manageStore", method=RequestMethod.GET)
	public String manageStore(ModelMap model){
		model.addAttribute("stores", storeDao.getAll());
		return "manage_store";
	}
}
