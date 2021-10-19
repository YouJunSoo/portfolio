package com.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.company.mapper.Step001Mapper;
import com.company.mapper.Step002Mapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class StepTxServiceImpl implements StepTxService{

	@Autowired private Step001Mapper step001Mapper;	
	@Autowired private Step002Mapper step002Mapper;
	
	@Transactional @Override
	public void test(String value) {
		try {
		step001Mapper.insertTodo(value + "지점 - 1차 입금중........완료");
		step002Mapper.insertTodo(value + "지점 - 2차 입금중........정전");
		}catch(Exception e) {
			//1. 예외가 발생하면
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
		}
	}

}
