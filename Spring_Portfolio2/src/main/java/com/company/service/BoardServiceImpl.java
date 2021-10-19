package com.company.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dto.BoardDto;
import com.company.mapper.BoardMapper;

@Service //어노테이션으로 서비스를 지정해줘야 동작함
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardMapper boardMapper;
	
	@Override public List<BoardDto> list() {  return boardMapper.list(); }

	@Override public int insert(BoardDto dto) {  
		try {
			dto.setBip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {  e.printStackTrace(); }
		return boardMapper.insert(dto); 
	}

	@Override public BoardDto select(BoardDto dto) { 
		// 상세보기 : 조회수 올리고 + 상세보기
		//  update_hit(BoardDto dto);
		//  read(BoardDto dto);
		boardMapper.update_hit(dto);		
		return boardMapper.read(dto);	
	}

	@Override public BoardDto update_view(BoardDto dto) {  return boardMapper.read(dto); }

	@Override public int update(BoardDto dto) {  return boardMapper.update(dto); }

	@Override public int delete(BoardDto dto) { return boardMapper.delete(dto); }

}
