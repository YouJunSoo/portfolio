package com.company.mapper;

import org.apache.ibatis.annotations.Insert;

public interface Step002Mapper {
	@Insert("insert into step002 (todo) values (#{data})")
	public int insertTodo(String data);
}
