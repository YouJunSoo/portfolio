package com.company.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.dto.BoardDto;
import com.company.service.BoardService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board2/*")
public class BoardController {
	
	@Autowired
	private BoardService service; 
	//1) 글쓰기 폼 , GET방식 , /board/create
	@RequestMapping(value="/write_view2" , method= {RequestMethod.GET})
	public String write_get() { return "/board2/write_view"; }
	
	//2) 글쓰기 기능 , POST방식 , /board/create
	@RequestMapping(value="/write2" , method= {RequestMethod.POST})
	public void write_post(MultipartFile file, BoardDto dto , HttpServletRequest request, HttpServletResponse response , Model model) throws IOException {  
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");	
		PrintWriter out = response.getWriter();
		if(service.insert(dto) > 0) { out.println("<script>alert('글쓰기 완료'); location.href='"+request.getContextPath()+"/board2/list2';</script>");}
		//return "/board/list";
	}
	
	//3) 글쓰기 리스트 , GET방식 , /board/create
	@RequestMapping(value="/list2" , method= {RequestMethod.GET})
	public String list_get(Model model) {
		model.addAttribute("list" , service.list());
		return "/board2/list"; }
	
	//4) 글쓰기 상세보기 , GET방식 , /board/create
	@RequestMapping(value="/detail_view2" , method= {RequestMethod.GET})
	public String read_get(BoardDto dto , Model model) { 
		model.addAttribute("dto" , service.select(dto));
		return "/board2/detail_view"; 
	}
	
	//5) 글쓰기 수정폼 , GET방식 , /board/create
	@RequestMapping(value="/edit_view2" , method= {RequestMethod.GET})
	public String update_get(BoardDto dto , Model model) {
		model.addAttribute("dto" , service.update_view(dto));
		return "/board2/edit_view"; }
	
	//6) 글쓰기 수정기능 , POST방식 , /board/create
	@RequestMapping(value="/edit2" , method= {RequestMethod.POST})
	public String update_post(BoardDto dto , RedirectAttributes rttr) throws IOException {  // httpServletRequest request 는 알림창 띄울때만 사용
		System.out.println("................." + dto);
		
		String result = "fail";
		
		if(service.update(dto) > 0) { 
			 result = "글수정에 성공했습니다.";
		}
		rttr.addFlashAttribute("success" , result);
		return "redirect:/board2/detail_view2?bno=" + dto.getBno();
	}
	
	//7) 글쓰기 삭제폼, GET방식 , /board/delete
	@RequestMapping(value="/delete_view2" , method= {RequestMethod.GET})
	public String delete_get(BoardDto dto) { return "/board2/delete_view"; } // 삭제폼에서 데이터를 보낼 때 사용하는 Model 을 사용하지 않아서 
																			// delete_view 부분의 /board/delete?bno=${boardDto.bno} 이렇게 됨 BoardDto 의 첫글자만 소문자
	
	//8) 글쓰기 삭제기능 , POST방식 , /board/delete
	@RequestMapping(value="/delete2" , method= {RequestMethod.POST})
	public String delete_post(BoardDto dto , RedirectAttributes rttr) throws IOException { 
		System.out.println("................." + dto);
		
		String result = "fail";
		
		if(service.delete(dto) > 0) { 
			 result = "글삭제에 성공했습니다.";
		}
		rttr.addFlashAttribute("success" , result);
		return "redirect:/board2/list2"; 		
	}
	
	@RequestMapping(value = "/basic" , method = RequestMethod.GET)
	public String home(@RequestParam("data") int data, Model model) {
		log.info(data);
		model.addAttribute("data",data);
		return "basic";
	}	
}