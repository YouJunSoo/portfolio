package com.company.mapper;

import java.util.List;

import com.company.dto.BoardDto;

public interface BoardMapper {
	public List<BoardDto> list();
	
	public int insert(BoardDto dto); // 메서드명은 mapper 폴더에 있는 BoardMapper의 ID값이랑 일치시켜야 함
	
	public BoardDto read(BoardDto dto); // mapper 폴더 안에 id값이 read 인것 안에 #{} 가 있으면 dto클래스 필수
	
	public int update_hit(BoardDto dto);
	
	public int update(BoardDto dto);
	
	public int delete(BoardDto dto);
}
