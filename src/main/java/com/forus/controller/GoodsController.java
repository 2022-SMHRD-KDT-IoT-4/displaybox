package com.forus.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.forus.domain.GoodsBuyCompleteVO;
import com.forus.domain.GoodsBuyVO;
import com.forus.domain.GoodsGetVO;
import com.forus.domain.GoodsOrderListVO;
import com.forus.domain.GoodsPwVO;
import com.forus.domain.GoodsVO;
import com.forus.domain.UserVO;
import com.forus.service.GoodsService;
import com.forus.service.UserService;

@Controller
public class GoodsController {
	public static String doorbtn ="";
	
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private UserService userService;
	
	// 초기화면
	@RequestMapping("/")
	public String primaryPage() {
		System.out.println("초기화면 실행");
		return "start";
	}
	
	// 1. main 상품리스트
	@RequestMapping("/main.do")
	public String mainGoodsList(Model model, HttpServletRequest request, HttpSession session) {
		 String user_id = (String)session.getAttribute("user_id");
		 System.out.println(user_id);

		List<GoodsVO> list = goodsService.findAllList();
		model.addAttribute("list", list);
		System.out.println(list);
		session.setAttribute("user_id", user_id);
	    System.out.println(session.getAttribute("user_id"));

		return "index";
	}
	
	// 2. 제품 상세 페이지
	@RequestMapping("/detail.do")
	public String detailGoodsList(int g_seq, Model model, HttpServletRequest request, HttpSession session) {
		String user_id = request.getParameter("user_id");
		System.out.println(user_id);
		 
		System.out.println("제품 상세페이지 실행");
		GoodsVO goods = goodsService.detailGoods(g_seq);
		model.addAttribute("vo", goods);
		System.out.println(goods);
		
		return "detail";
	}
	

	// 3. 제품 구매 페이지
	@RequestMapping("/buy.do")
	public String buyGoods(int g_seq, Model model, HttpServletRequest request, HttpSession session) {
		 String user_id = request.getParameter("user_id");
		 System.out.println(user_id);
		 
		System.out.println("구매 페이지 실행");
		GoodsBuyVO goods = goodsService.buyGoods(g_seq);
		model.addAttribute("vo", goods);
		
		return "buy";
	}
	
	// 4. 상품 판매 상태 변경
	@RequestMapping("/goodsStatusUpdate.do")
	public @ResponseBody GoodsVO goodsStatus(int g_seq) {
		
		// 통신 됨
		System.out.println("g_seq : " + g_seq);
		goodsService.goodsStatusUpdate(g_seq);
		GoodsVO vo = goodsService.detailGoods(g_seq);
		System.out.println(vo);
		return vo;
	}
	
	// 5. 결제 완료 페이지
	@RequestMapping("/buycom.do")
	public String buyGoodsComplete(int g_seq, Model model, HttpServletRequest request, HttpSession session) {
		 String user_id = request.getParameter("user_id");
		 System.out.println(user_id);
		
		System.out.println("구매 완료 페이지");
		
		GoodsBuyCompleteVO vo = (GoodsBuyCompleteVO) goodsService.buyComplete(g_seq);
		model.addAttribute("vo", vo);
		System.out.println(vo);
		
		return "buycomplete";
	}
	
	// 6-1. login 폼 페이지
	@RequestMapping("/viewLogin.do")
	public String viewLogin() {
		System.out.println("viewlogin.do 진입");
		return "viewLogin";
	}
	
	// 6-2. login 기능
	@PostMapping("/login.do")
	   public String login(UserVO vo, HttpSession session) throws Exception {
	      BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	      System.out.println("로그인 페이지 진입");
	      System.out.println(vo.getUser_id());
	      if(userService.loginUser(vo) != null) {
	    	  UserVO result = userService.loginUser(vo);
	    	  System.out.println("로그인 확인" + result);
	    	  
	    	  // 암호키를 복호화 함 
	    	  encoder.matches(vo.getUser_pw(), result.getUser_pw());
	    	  if(encoder.matches(vo.getUser_pw(), result.getUser_pw())) {
	    		  session.setAttribute("user_id", result.getUser_id() );
	    		  System.out.println("My model: " + session.getAttribute("user_id"));
	    		  return "redirect:/main.do";
	    	  }else {
	    		  return "redirect:/viewLogin.do";
	    	  }
	      }return "redirect:/viewLogin.do";

	   }

	// 6-2. 로그아웃
	@RequestMapping("/logoutService.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main.do";
	}
	
	// 7. 주문한 내역 불러오는 페이지
	@RequestMapping("/orderlist.do")
	public String userOrderList(Model model, HttpServletRequest request, HttpSession session) {
		System.out.println("주문내역 실행");
		
		String user_id = (String)session.getAttribute("user_id");
		System.out.println(user_id);
		List<GoodsOrderListVO> vo = userService.userOrderList(user_id);
		model.addAttribute("vo", vo);
		
		return "orderlist";
	}
	
	// 7-1 주문한 물건 실제로 꺼내는 기능
	@PostMapping("/completeBuy.do")
	public @ResponseBody GoodsVO completeBuy(int g_seq) {
		// 통신 됨
		System.out.println("g_seq : " + g_seq);
		userService.completeBuyGoods(g_seq);
		GoodsVO vo = goodsService.detailGoods(g_seq);
		System.out.println(vo);
		return vo;
	} 

	
	// 8. 물건 삭제 페이지
		@RequestMapping("/getGoods.do")
		public String getGoodsList(Model model, HttpServletRequest request, HttpSession session) {
			System.out.println("상품 회수 페이지 실행");
			
			String user_id = (String)session.getAttribute("user_id");
			System.out.println("상품 회수 페이지 세션 : " + user_id);
			List<GoodsGetVO> vo = userService.userSellList(user_id);
			model.addAttribute("vo", vo);
			
			return "getgoods";
		}

	// 9. 상품 삭제하기
		@RequestMapping("/deleteGoods.do")
		public @ResponseBody GoodsVO goodsDelete (int g_seq) {
			
			// 통신 됨
			System.out.println("상품 삭제 페이지 g_seq : " + g_seq);
			userService.deleteGoods(g_seq);
			GoodsVO vo = goodsService.detailGoods(g_seq);
			System.out.println("상품 삭제 성공");
			return vo;
		}
		
	 // 10. 비밀번호 입력 페이지
      @RequestMapping("/keypad.do")
      public String keypadOpen(int g_seq, Model model) {
         System.out.println("다이얼 실행");
         
         GoodsPwVO vo = goodsService.goodsPassword(g_seq);
         model.addAttribute("vo", vo);
         return "keypad";
      }
		
		
	// 11. 상품 등록 페이지
		@RequestMapping("/inputGoods.do")
		public String inputGoodsList(Model model, HttpServletRequest request, HttpSession session) {
			System.out.println("상품 등록 페이지 실행");
			
			String user_id = (String)session.getAttribute("user_id");
			System.out.println("상품 등록 페이지 세션 : " + user_id);
			List<GoodsGetVO> vo = userService.inputGoodsList(user_id);
			model.addAttribute("vo", vo);
			
			return "goodsinput";
		}
		
	// 12. 실제로 상품 등록하기
		@PostMapping("/inputGoodsAdd.do")
		public @ResponseBody GoodsVO inputGoodsAdd(int g_seq) {
			
			System.out.println("상품 등록 g_seq : " + g_seq);
			userService.addGoods(g_seq);
			GoodsVO vo = goodsService.detailGoods(g_seq);
			return vo;
		}

	@RequestMapping("/interface.do")
	public String f6() {
		System.out.println("인터페이스 실행");
		return "interface";
	}

	@RequestMapping("/manual.do")
	public String manualOpen() {
		System.out.println("이용방법 실행");
		return "manual";
	}

	

	@RequestMapping("/text.do")
	public String f9() {
		System.out.println("텍스트 실행");
		return "text";
	}
	
	@RequestMapping("/getgoods.do")
	public String getgoods() {
		
		return "getgoods";
	}
	
	@RequestMapping("/goodsinput.do")
	public String goodsin() {
		
		return "goodsinput";
	}
	
	
	// 아두이노 통신 부분 돈 터치
	@RequestMapping("/module.do")
	@ResponseBody
	public String Arduino(String keypad) {				
		return doorbtn;
	}
	
	@RequestMapping("/BoxLed1.do")
	public String boxled1(String btn) {
		doorbtn = btn;
		
		return "text";
	}
	
	@RequestMapping("/BoxLed2.do")
	public String boxled2(String btn) {
		doorbtn = btn;
			
		return "text";
	}
	
	@RequestMapping("/BoxLed3.do")
	public String boxled3(String btn) {
		doorbtn = btn;
			
		return "text";
	}
	
	@RequestMapping("/BoxLed4.do")
	public String boxled4(String btn) {
		doorbtn = btn;
			
		return "text";
	}
	
	
}

