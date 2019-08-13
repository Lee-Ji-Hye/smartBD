package com.team.smart.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 
 * @author jung_sh
 * @date 2019-08-08
 * @content 
 *
 */

@Controller
public class TestController {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//test�� ���� ��Ʈ�ѷ�
	/*
		<security:intercept-url pattern="/sysmaster/**"
			access="hasRole('ROLE_SYSMASTER')" />
			
		<security:intercept-url pattern="/bd_admin/**"
			access="hasRole('BD_ADMIN')" />
			
		<security:intercept-url pattern="/bd_office/**"
			access="hasAnyRole('BD_ADMIN','BD_OFFICE')" />
			
		<security:intercept-url pattern="/bd_food/**"
			access="hasAnyRole('BD_ADMIN','BD_FOOD')" />
			
		<security:intercept-url pattern="/bd_park/**"
			access="hasAnyRole('BD_ADMIN','BD_PARK')" />
			
		<security:intercept-url pattern="/cp_admin/**"
			access="hasRole('CP_ADMIN')" />
			
		<security:intercept-url pattern="/cp_manager/**"
			access="hasAnyRole('CP_ADMIN','CP_MANAGER')" />
			
		<security:intercept-url pattern="/cp_employee/**"
			access="hasAnyRole('CP_ADMIN','CP_MANAGER','CP_EMPLOYEE')" />
			
		<security:intercept-url pattern="/member/**"
			access="isAuthenticated()" />
			
		<security:intercept-url pattern="/**"
			access="permitAll" />
	 */
	//003_join ȸ������ �Է� ȭ�� �̵�

	@RequestMapping("a")
	public String a(HttpServletRequest req, Model model) {
		logger.info("URI -> sysmaster");
		return "mng/building/a";
	}

	
	@RequestMapping("sysmaster/")
	public String test1(HttpServletRequest req, Model model) {
		logger.info("URI -> sysmaster");
		return "test";
	}

	@RequestMapping("bd_admin/")
	public String test2(HttpServletRequest req, Model model) {
		logger.info("URI -> bd_admin");
		return "test";
	}

	@RequestMapping("bd_office/")
	public String test3(HttpServletRequest req, Model model) {
		logger.info("URI -> bd_office");
		return "test";
	}

	@RequestMapping("bd_food/")
	public String test4(HttpServletRequest req, Model model) {
		logger.info("URI -> bd_food");
		return "test";
	}

	@RequestMapping("bd_park/")
	public String test5(HttpServletRequest req, Model model) {
		logger.info("URI -> bd_park");
		return "test";
	}

	@RequestMapping("cp_admin/")
	public String test6(HttpServletRequest req, Model model) {
		logger.info("URI -> cp_admin");
		return "test";
	}

	@RequestMapping("cp_manager/")
	public String test7(HttpServletRequest req, Model model) {
		logger.info("URI -> cp_manager");
		return "test";
	}

	@RequestMapping("cp_employee/")
	public String test8(HttpServletRequest req, Model model) {
		logger.info("URI -> cp_employee");
		return "test";
	}

	@RequestMapping("member/")
	public String test9(HttpServletRequest req, Model model) {
		logger.info("URI -> member");
		return "test";
	}

	
}
