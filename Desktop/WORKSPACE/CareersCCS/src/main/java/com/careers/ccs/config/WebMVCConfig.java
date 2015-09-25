package com.careers.ccs.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.WebMvcAutoConfiguration.WebMvcAutoConfigurationAdapter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;

import com.careers.ccs.data.dao.CandidateDAO;
import com.careers.ccs.data.dao.UserDAO;
import com.careers.ccs.data.dao.imp.CandidateDAOImp;
import com.careers.ccs.data.dao.imp.UserDAOImp;
import com.careers.ccs.data.services.CandidateServices;
import com.careers.ccs.data.services.UserServices;

@Configuration
@EnableWebMvc
public class WebMVCConfig extends WebMvcAutoConfigurationAdapter{
	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer){
		configurer.enable();
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry){
		registry.addResourceHandler("WEB-INF/resources/**");
	}
	
	@Bean
	public InternalResourceViewResolver viewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean  
    public UrlBasedViewResolver urlViewResolver() {  
        UrlBasedViewResolver resolver = new UrlBasedViewResolver();  
        resolver.setPrefix("/WEB-INF/views/");  
        resolver.setSuffix(".jsp");  
        resolver.setViewClass(JstlView.class);  
        return resolver;  
    }
	
	@Bean
    public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/ccscareersdb");
        dataSource.setUsername("root");
        dataSource.setPassword("root");
         
        return dataSource;
    }
	
	@Bean
	@Autowired
	public JdbcTemplate getTemplate(DataSource dataSource){
		return new JdbcTemplate(dataSource);
	}
     
	
	@Bean
	public UserServices getUserServices(){
		UserServices services = new UserServices();
		return services;
	}
	
	@Bean
	public CandidateServices getCandidateServices(){
		return new CandidateServices();
	}
	
	@Bean
	public UserDAO getUserDAO(){
		return new UserDAOImp();
	}
	
	@Bean
	public CandidateDAO getCandidateDAO(){
		return new CandidateDAOImp();
	}
}

