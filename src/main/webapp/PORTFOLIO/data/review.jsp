
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.net.*"%>
  <%@page import="java.io.*"%>
<%	//블로그 가져오기
	/// get 방식 요청 연결
	String clientId = "ttNioDlUtWb0SlRNRKdx"; // 클라이언트 아이디값
	String clientSecret = "AfRcLHehBx"; // 클라이언트 시크릿 값
	String param = "?query=" + URLEncoder.encode("제네시스 시승기", "UTF-8");	// ? 는 쿼리스트링 ( 즉 get) 방식일때 사용함
	URL url = new URL("https://openapi.naver.com/v1/search/blog.json"+ param);
	HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	/// 옵션
	conn.setRequestProperty("X-Naver-Client-Id", clientId);
	conn.setRequestProperty("X-Naver-Client-Secret", clientSecret);
	
	conn.setDoInput(true); conn.setDoOutput(true); conn.setRequestMethod("GET");
	
	/// 연결 및 데이터 받아오기 + 끊기
	if(conn.getResponseCode() == 200){		//성공했으면 그 페이지에 있는것을 한 줄씩 읽어오기
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String line="";
		while ((line = br.readLine()) != null){ buffer.append(line); }
		out.println(buffer.toString()); // 출력
		br.close();
		conn.disconnect();
	}
%>