package com.careers.ccs;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.careers.ccs.data.services.UserServices;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = CareersCcsApplicationTests.class)
@WebAppConfiguration
public class CareersCcsApplicationTests{

	@Autowired
	private UserServices userServices;
	
	@Test
	public void contextLoads() {
		assertNotNull(userServices);
	}

}
