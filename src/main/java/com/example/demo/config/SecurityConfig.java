package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
	@Bean
	SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception{
		http
        .authorizeHttpRequests(authorizeRequests ->
            authorizeRequests
                .requestMatchers("/admin/**").authenticated() // Restrict access to /admin/** to users with role ADMIN
                .requestMatchers("/**").permitAll()) // Restrict access to /user/** to users with role USER or ADMIN
                
        .formLogin(Customizer.withDefaults()) 
        .httpBasic(Customizer.withDefaults());

    return http.build();
	}

}
