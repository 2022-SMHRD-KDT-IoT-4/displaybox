package com.forus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.forus.domain.DisplayLoginVO;
import com.forus.domain.GoodsOrderListVO;
import com.forus.domain.GoodsVO;
import com.forus.domain.UserVO;
import com.forus.mapper.UserMapper;

@Service
public class UserService {
	@Autowired UserMapper mapper;
	
	// 1. 앱 구매자 로그인
	public final UserVO loginUser(UserVO vo){
		System.out.println(mapper.loginUser(vo));
		return mapper.loginUser(vo);
	}
	
	// 2. 주문내역
	public  List<GoodsOrderListVO> userOrderList(String user_id) {
		return mapper.userOrderList(user_id);
	}
	
	// 3. 디스플레이 구매자 로그인
	public DisplayLoginVO displayLoginUser(DisplayLoginVO vo) {
		System.out.println(mapper.displayLogin(vo));
		return mapper.displayLogin(vo);
	}
	
	// 4. 포인트 차감
	
}
