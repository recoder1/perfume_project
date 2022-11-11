package com.human.basic;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.basic.service.HyangstaService;
import com.human.basic.service.MarketService;
import com.human.basic.service.Perfume_StoryService;
import com.human.basic.service.ReviewServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/home/")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
	
//	@RequestMapping(value="{url}.do")
//	public String memberConn(@PathVariable String url) {
//		System.out.println("호출");
//		return "/user/"+url;
//	}
	
//	@RequestMapping("home.do")
//	public String showHome() {		
//		
//		return "home/home";
//	}
//	
	
	@RequestMapping("6_myPage_login.do")
	public String showLogin() {
		System.out.println("로그인 페이지 이동");
		return "user/6_myPage_login";
	}
	
	@RequestMapping("6_myPage_sign-up.do")
	public String showSignUp() {
		System.out.println("회원가입 페이지 이동");
		return "user/6_myPage_sign-up";
	}
	
	@Autowired
	private HyangstaService hyangstaService;
	@Autowired
	private Perfume_StoryService perfume_StoryService;
	@Autowired
	private MarketService marketService;
	
	@Autowired
	private ReviewServiceImpl reviewService;
	
	// 홈 화면 목록 출력
	@RequestMapping("home.do")
	public String showHome(Model model) {
		
		// 향스타 출력
		model.addAttribute("hyPost", hyangstaService.getMainHyPost() );
		
		// 커뮤니티_향수이야기 출력 (조회순)
		model.addAttribute("mainStoryList", perfume_StoryService.mainStoryList());
		// 커뮤니티_중고거래 출력 (조회순)
		model.addAttribute("mainMarketList", marketService.mainMarketList());
		
		// 향수사진 불러오기
		model.addAttribute("mainProductList", reviewService.main_product_list());
		// 리뷰 불러오기
		model.addAttribute("main_review_list1", reviewService.main_review_list1());
		model.addAttribute("main_review_list2", reviewService.main_review_list2());
		model.addAttribute("main_review_list3", reviewService.main_review_list3());
		return "home/home";
	}
	
}
