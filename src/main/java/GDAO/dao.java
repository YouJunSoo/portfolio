package GDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.company.genesis_img.Genesis_img_dto;

import DBManager.DBManager;
import GDTO.GMakerDto;
import GDTO.GModelDto;
import GDTO.GModel_Info_DTO;
import GDTO.dto;

public class dao {
	public int insert(dto dto) { // 회원가입 파트
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "insert into genesis(name, email, pass, phone, address, car) values( ? , ? , ? , ? , ? , ?)";
		int result = 0;
	
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1, dto.getName());
			p.setString(2, dto.getEmail());
			p.setString(3, dto.getPass());
			p.setString(4, dto.getPhone());
			p.setString(5, dto.getAddress());
			p.setString(6, dto.getCar());			
			result = p.executeUpdate();
			
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) {try { r.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		
		return result;
	}
	
	public dto confirm(dto dto) { // 회원정보 확인 파트
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select * from genesis where name=? and phone=? and pass=?";
		dto result = new dto();
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1, dto.getName());
			p.setString(2, dto.getPhone());
			p.setString(3, dto.getPass());
			r = p.executeQuery();
			if(r.next()) {
				result = new dto(r.getString("name") , r.getString("email") , r.getString("pass"),r.getString("phone") 
							   , r.getString("address") , r.getString("car"));
			}
			
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) {try { r.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		return result;
	}
	
	public ArrayList<GModelDto> ModelList(){ // 필살기 차량모델 부분
		ArrayList<GModelDto> list = new ArrayList<>();
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select * from genesis_model";
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			r = p.executeQuery();
			while(r.next()) {
				list.add(new GModelDto(r.getString("model")));
			}
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null ) { try { r.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(p != null ) { try { p.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(c != null ) { try { c.close(); }catch(Exception e) { e.printStackTrace(); }}
		}
		return list;
	}
	
	public ArrayList<GModel_Info_DTO> ModelSpecification(int no){ // 필살기 세부모델 정보
		ArrayList<GModel_Info_DTO> list = new ArrayList<>();
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = " select a.no, a.model , b.model_info , c.displacement , c.horsepower , c.mileage, c.price "
				   + " from genesis_model a join genesis_info b join genesis_info_detail c "
				   + " on a.no = ? and a.no = b.model_no and b.no = c.model_no";
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setInt(1, no);
			r = p.executeQuery();
			while(r.next()) {
				list.add(new GModel_Info_DTO(r.getInt("no"), r.getString("model") , r.getString("model_info"), r.getString("displacement") , r.getString("horsepower") , r.getString("mileage") , r.getString("price")));
			}
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null ) { try { r.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(p != null ) { try { p.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(c != null ) { try { c.close(); }catch(Exception e) { e.printStackTrace(); }}
		}
		return list;
	}
	
	public ArrayList<GMakerDto> Maker(){ // 필살기 제조사 검색부분
		ArrayList<GMakerDto> list = new ArrayList<>();
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select * from maker";
		
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			r = p.executeQuery();
			while(r.next()) {
				list.add(new GMakerDto(r.getString("name")));
			}
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null ) { try { r.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(p != null ) { try { p.close(); }catch(Exception e) { e.printStackTrace(); }}
			if(c != null ) { try { c.close(); }catch(Exception e) { e.printStackTrace(); }}
		}
		return list;
	}
	public int withdraw(dto dto) { // 회원탈퇴 파트
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "delete from genesis where email = ? and pass = ? ;";
		int result = -1;
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1 , dto.getEmail());
			p.setString(2, dto.getPass());
			result = p.executeUpdate();
		}catch(Exception e) {e.printStackTrace();
		}finally {
			if(r != null) {try { r.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		return result;
	}
	public int login(dto dto) {
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select count(*) as cnt from genesis where email=? and pass=?";  
		// 해당아이디의 비밀번호를 확인하는코드가 아닐까요?? select count(*) cnt from 테이블 where  아이디=?  and  비밀번호 =? ;  header?로그인액션보여줏
		int result = -1;
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1, dto.getEmail());
			p.setString(2, dto.getPass());
			r = p.executeQuery(); // 결과를 r 에 저장
			System.out.println(dto.getEmail());
			System.out.println("dto..."+dto.getPass());
			if(r.next()) {
				if(r.getString("cnt").equals("1")) { // 텍스트창에 입력한 비밀번호를 와야함
					
					result = 1;
				}
				else {
					result = 0;
				}
			}
		}catch(Exception e) {e.printStackTrace();
		}finally {
			if(r != null) {try { r.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		return result;
	}
	public ArrayList<Genesis_img_dto> carousel(Genesis_img_dto dto){
		
		ArrayList<Genesis_img_dto> list = new ArrayList<>();
		Connection c = null; PreparedStatement p =null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select * from genesis_img";
		
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			r = p.executeQuery();
			while(r.next()) {
				list.add(new Genesis_img_dto(r.getInt("no") , r.getString("title") 
						            , r.getString("name") , r.getString("description") , r.getString("img")));	
			}
			System.out.println("................... carousel dao : " + list );
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) { try {r.close();}catch(Exception e) {e.printStackTrace();}}
			if(p != null) { try {p.close();}catch(Exception e) {e.printStackTrace();}}
			if(c != null) { try {c.close();}catch(Exception e) {e.printStackTrace();}}
		}
		
		return list;
	}
	public int update(dto dto) {
		Connection c = null; PreparedStatement p = null;
		DBManager db = new DBManager();
		String sql = "update genesis set email = ? , phone = ? , address = ? , car = ? where pass = ? and name = ?";
		int result = -1;
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1, dto.getEmail());
			p.setString(2, dto.getPhone());
			p.setString(3, dto.getAddress());
			p.setString(4, dto.getCar());
			p.setString(5, dto.getPass());
			p.setString(6, dto.getName());
			result = p.executeUpdate();
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		return result;
	}
	
	public dto confirm2(dto dto) { // 회원정보 확인 파트
		Connection c = null; PreparedStatement p = null; ResultSet r = null;
		DBManager db = new DBManager();
		String sql = "select * from genesis where phone=?";
		dto result = new dto();
		try {
			c = db.getConnection();
			p = c.prepareStatement(sql);
			p.setString(1, dto.getPhone());
			r = p.executeQuery();
			if(r.next()) {
				result = new dto(r.getString("name") , r.getString("email") , r.getString("pass"),r.getString("phone") 
							   , r.getString("address") , r.getString("car"));
			}
			
		}catch(Exception e) { e.printStackTrace();
		}finally {
			if(r != null) {try { r.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(p != null) {try { p.close(); } catch(Exception e) { e.printStackTrace(); }}
			if(c != null) {try { c.close(); } catch(Exception e) { e.printStackTrace(); }}
		}
		return result;
	}
}
