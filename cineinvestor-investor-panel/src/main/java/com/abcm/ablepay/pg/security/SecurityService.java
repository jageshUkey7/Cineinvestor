package com.abcm.ablepay.pg.security;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Configuration
@EnableWebSecurity
public class SecurityService {
	
	
	Logger log = LoggerFactory.getLogger(getClass());
	
	 @Autowired
	    private UserDetailsServiceImpl userDetailsService;

	    @Bean
	    public PasswordEncoder passwordEncoder() {
	        return new BCryptPasswordEncoder();
	    }

	    @Bean
	    public DaoAuthenticationProvider authenticationProvider() {
	        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
	        authProvider.setUserDetailsService(userDetailsService);
	        authProvider.setPasswordEncoder(passwordEncoder());
	        return authProvider;
	    }

	   
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	        auth.authenticationProvider(authenticationProvider());
	    }


	        @Bean
	        public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
	            http
	                    .authorizeRequests(authorizeRequests -> authorizeRequests
	                            .requestMatchers("/**").permitAll()
	                            .anyRequest().authenticated()
	                    )
	                    .formLogin(formLogin -> formLogin
	                            .loginPage("/login")
	                            .loginProcessingUrl("/dologin")
	                            .defaultSuccessUrl("/dashboard")
	                            .failureUrl("/login?error")
	                    )
	                    .logout(logout -> logout
	                            .logoutSuccessHandler(new LogoutSuccessHandler() {
	                                @Override
	                                public void onLogoutSuccess(HttpServletRequest request,
	                                                            HttpServletResponse response,
	                                                            Authentication authentication) {
	                                    String context = "";

	                                    try {
	                                        log.info("This user logged out: " + authentication.getName());
	                                        log.info("Principal: " + authentication.getPrincipal().toString());
	                                        // User userDetails = userDetailsRepository.getData(authentication.getName());
	                                        // commonServiceImpl.updateStatus(userDetails);
	                                        context = request.getContextPath() + "/login";

	                                    } catch (Exception e) {
	                                        log.info("Exception 1 --> " + authentication.getPrincipal().toString());
	                                    }

	                                    try {
	                                        response.sendRedirect(context);
	                                    } catch (IOException e) {
	                                        log.info("Second exception");
	                                        e.printStackTrace();
	                                    }
	                                }
	                            })
	                            .deleteCookies("JSESSIONID")
	                    )
	                    .csrf(csrf -> csrf.disable());

	            return http.build();
	        }
	        
	       


}
