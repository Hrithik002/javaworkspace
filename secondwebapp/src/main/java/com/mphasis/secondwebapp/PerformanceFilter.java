package com.mphasis.secondwebapp;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
@WebFilter("/*")
public class PerformanceFilter implements Filter {
	@Override
	public void doFilter(ServletRequest req, ServletResponse resp , FilterChain chain)
			throws IOException, ServletException {
		long start = System.currentTimeMillis();
		
	//	System.out.print("Hiiii!!! I am performance filter!!!");
				chain.doFilter(req, resp); 
				//System.out.print("Thanks for Visiting!!!");
		
		long end =System .currentTimeMillis();
		HttpServletRequest hreq = (HttpServletRequest)req;
		System.out.println("IP" +hreq.getRemoteHost()+","+hreq.getRequestURI() +"request completed (ms)"+(end-start));
		
	}

}
