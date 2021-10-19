package com.company.sb011;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.mapper.Step001Mapper;
import com.company.mapper.Step002Mapper;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class JDBC005_mapper_tx {
	@Autowired
	private Step001Mapper step001Mapper;
	
	@Autowired
	private Step002Mapper step002Mapper;
	
	@Test
	public void testMapper() throws Exception{
		try {
			log.info(step001Mapper.insertTodo("5000"));
			log.info(step002Mapper.insertTodo("5000"));
			log.info(step001Mapper.insertTodo("3000"));
			log.info(step002Mapper.insertTodo("3000원 입금 도중 정전이 발생해서 ATM이 돈을 먹었다"));
		}catch(Exception e) {e.printStackTrace(); }
	}
}
