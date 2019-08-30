package com.team.smart.security.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

public class UserLoginSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	protected final Log logger = LogFactory.getLog(this.getClass());

	private RequestCache requestCache = new HttpSessionRequestCache();

	//security에 접근했을때 막힌 url 저장한거 꺼내서 돌려보내주는 핸들러 null에 우리꺼 처리하면됨.
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws ServletException, IOException {
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		//??
		if(!authentication.getAuthorities().contains(new SimpleGrantedAuthority("ROLE_ANONYMOUS"))){
			List<UserGrantedAuthority> securityAuth = (List<UserGrantedAuthority>) authentication.getAuthorities();
			//업체 정보를 꺼내서 중복되지 않게 담음
			request.getSession().setAttribute("comp_seq", securityAuth.get(0).getComp_seq());//업체코드 comp_seq에 넣음
			request.getSession().setAttribute("comp_org", securityAuth.get(0).getComp_org());//법인명 comp_org에 넣음
			request.getSession().setAttribute("b_code", securityAuth.get(0).getB_code());
			request.getSession().setAttribute("b_name", securityAuth.get(0).getB_name());
			
		}		
		//추가
		
		
		//System.out.println("savedRequest : " + savedRequest);
		if (savedRequest == null) {
			super.onAuthenticationSuccess(request, response, authentication);
			return;
		}
		String targetUrlParameter = getTargetUrlParameter();
		if (isAlwaysUseDefaultTargetUrl()
				|| (targetUrlParameter != null && StringUtils.hasText(request
						.getParameter(targetUrlParameter)))) {
			requestCache.removeRequest(request, response);
			super.onAuthenticationSuccess(request, response, authentication);

			return;
		}
		
		clearAuthenticationAttributes(request);
		
		// Use the DefaultSavedRequest URL
		String targetUrl = savedRequest.getRedirectUrl();
		logger.debug("Redirecting to DefaultSavedRequest Url: " + targetUrl);
		getRedirectStrategy().sendRedirect(request, response, targetUrl);
	}

	public void setRequestCache(RequestCache requestCache) {
		System.out.println("setRequestCache : "+requestCache);
		this.requestCache = requestCache;
	}
}


