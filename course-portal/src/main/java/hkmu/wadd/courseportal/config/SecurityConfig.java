package hkmu.wadd.courseportal.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;

@Configuration
public class SecurityConfig {
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/").permitAll() // Allow homepage without login
                        .anyRequest().authenticated()     // Other pages require login
                )
                .formLogin()
                .and()
                .logout();
        return http.build();
    }
}
