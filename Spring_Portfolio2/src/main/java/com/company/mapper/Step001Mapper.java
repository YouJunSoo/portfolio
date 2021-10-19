package com.company.mapper;

import org.apache.ibatis.annotations.Insert;

public interface Step001Mapper {
	@Insert("insert into step001 (todo) values (#{data})")
	public int insertTodo(String data);
}
