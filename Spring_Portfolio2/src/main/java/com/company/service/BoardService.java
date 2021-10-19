package com.company.service;

import java.util.List;

import com.company.dto.BoardDto;
public interface BoardService {
		//전체 리스트 불러오기
		public List<BoardDto> list();
		
		//글쓰기
		public int insert(BoardDto dto); // 메서드명은 mapper 폴더에 있는 BoardMapper의 ID값이랑 일치시켜야 함
		
		//상세보기
		public BoardDto select(BoardDto dto); // mapper 폴더 안에 id값이 read 인것 안에 #{} 가 있으면 dto클래스 필수	// 상세보기 : 조회수 올리고 + 상세보기
		
		//수정하기 폼
		public BoardDto update_view (BoardDto dto);
		
		//수정
		public int update(BoardDto dto);
		
		//삭제
		public int delete(BoardDto dto);
}

