package com.comtrade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter{
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/resources/**", "/registration").permitAll()
				 .anyRequest().authenticated() 
		.antMatchers("/").hasAnyRole("user", "admin")
		.antMatchers("/showproducts/**")
		.hasAnyRole("user", "admin")
		.antMatchers("/onama")
		.hasAnyRole("user", "admin").
		antMatchers("/kontakt")
		.hasAnyRole("user", "admin").
		antMatchers("/showproduct/**")
		.hasAnyRole("user", "admin").
		antMatchers("/newproduct/**")
		.hasAnyRole( "admin").
		antMatchers("/removeproducts/**")
		.hasAnyRole( "admin").
		antMatchers("/showproducts/**")
		.hasAnyRole("user", "admin")
		
		.and().formLogin().loginPage("/login")
				. loginProcessingUrl("/userAuthentication"). permitAll().
		and().logout().permitAll().and()
		.exceptionHandling()
		.accessDeniedPage("/access-denied");
	}

	
	@Autowired
	private UserDetailsService userDetailsService;


	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder(11);
	}


	 @Bean
	    public AuthenticationManager customAuthenticationManager() throws Exception {
	        return authenticationManager();
	    }

	    @Autowired
	    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	    }

}
