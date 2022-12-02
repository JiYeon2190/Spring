package com.spring.care.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spring.care.impl.BoardDo;
import com.spring.care.common.JdbcUtil;

@Repository("boardDao")
public class BoardDao {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public void insertBoard(BoardDo bdo) {
		conn = JdbcUtil.getConnection();
		String sql = "insert into care (name, tel, fname, date, time, content) values (?, ?, ?, ?, ?, ?)";		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bdo.getName());
			pstmt.setString(2, bdo.getTel());
			pstmt.setString(3, bdo.getFname());
			pstmt.setString(4, bdo.getDate());
			pstmt.setString(5, bdo.getTime());
			pstmt.setString(6, bdo.getContent());
			
			pstmt.executeUpdate();
			JdbcUtil.close(rs, pstmt, conn);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDo> getBoardList() {
		ArrayList<BoardDo> bList = new ArrayList<BoardDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from care";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDo bdo = new BoardDo();
				bdo.setSeq(rs.getInt(1));
				bdo.setName(rs.getString(2));
				bdo.setTel(rs.getString(3));
				bdo.setFname(rs.getString(4));
				bdo.setDate(rs.getString(5));
				bdo.setTime(rs.getString(6));
				bdo.setContent(rs.getString(7));

				bList.add(bdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bList;
	}
	
	public BoardDo getOneBoard(BoardDo board) {
		BoardDo bdo = new BoardDo();
		conn = JdbcUtil.getConnection();
		String sql = "select * from care where seq=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getSeq());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bdo.setSeq(rs.getInt(1));
				bdo.setName(rs.getString(2));
				bdo.setTel(rs.getString(3));
				bdo.setFname(rs.getString(4));
				bdo.setDate(rs.getString(5));
				bdo.setTime(rs.getString(6));
				bdo.setContent(rs.getString(7));

			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bdo;
	}
	
	public void updateBoard(BoardDo bdo) {
		conn = JdbcUtil.getConnection();
		String sql = "update care set name=?, tel=?, fname=?, date=?, time=?, content=? where seq=?";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bdo.getName());
			pstmt.setString(2, bdo.getTel());
			pstmt.setString(3, bdo.getFname());
			pstmt.setString(4, bdo.getDate());
			pstmt.setString(5, bdo.getTime());
			pstmt.setString(6, bdo.getContent());
			pstmt.setInt(7, bdo.getSeq());
			
			pstmt.executeUpdate();
			JdbcUtil.close(rs, pstmt, conn);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void deleteBoard(BoardDo bdo) {
		conn = JdbcUtil.getConnection();
		String sql = "delete from care where seq=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bdo.getSeq());
			
			pstmt.executeUpdate();
			JdbcUtil.close(rs, pstmt, conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDo> searchBoardList(String searchCon, String searchKey) {
		ArrayList<BoardDo> bList = new ArrayList<BoardDo>();
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "";
			if(searchCon.equals("name")) {
				sql = "SELECT * FROM care WHERE name LIKE '%"+searchKey+"%' ORDER BY seq DESC";
			}
			else if(searchCon.equals("fname")) {
				sql = "SELECT * FROM care WHERE fname LIKE '%"+searchKey+"%' ORDER BY seq DESC";
			}
			else if(searchCon.equals("all")) {
				sql = "SELECT * FROM care";
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDo bdo = new BoardDo();
				bdo.setSeq(rs.getInt(1));
				bdo.setName(rs.getString(2));
				bdo.setTel(rs.getString(3));
				bdo.setFname(rs.getString(4));
				bdo.setDate(rs.getString(5));
				bdo.setTime(rs.getString(6));
				bdo.setContent(rs.getString(7));
				bList.add(bdo);
				
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bList;
	}
	
	public ArrayList<BoardDo> sortList(String sortCon) {
		ArrayList<BoardDo> bList = new ArrayList<BoardDo>();
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "";
			if(sortCon.equals("asc")) {
				sql = "select * from care";
			}
			else if(sortCon.equals("desc")) {
				sql = "select * from care order by seq desc";
			}
			else if(sortCon.equals("name")) {
				sql = "select * from care order by name, date";
			}
			else if(sortCon.equals("time")) {
				sql = "select * from care order by date, time";
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDo bdo = new BoardDo();
				bdo.setSeq(rs.getInt(1));
				bdo.setName(rs.getString(2));
				bdo.setTel(rs.getString(3));
				bdo.setFname(rs.getString(4));
				bdo.setDate(rs.getString(5));
				bdo.setTime(rs.getString(6));
				bdo.setContent(rs.getString(7));
				bList.add(bdo);
				
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bList;
	}

}
