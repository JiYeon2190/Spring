package com.spring.care.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spring.care.common.JdbcUtil;

@Repository("facDao")
public class FacDao {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ArrayList<FacDo> getBoardList() {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));

				fList.add(fdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return fList;
	}
	
	public FacDo getOneBoard(FacDo board) {
		FacDo fdo = new FacDo();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility where seq=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getSeq());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return fdo;
	}
	
	public ArrayList<FacDo> searchBoardList(String searchCon, String searchKey) {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		try {
			conn = JdbcUtil.getConnection();
			
			String sql = "";
			if(searchCon.equals("name")) {
				sql = "SELECT * FROM facility WHERE name LIKE '%"+searchKey+"%' ORDER BY seq DESC";
			}
			else if(searchCon.equals("addr")) {
				sql = "SELECT * FROM facility WHERE addr LIKE '%"+searchKey+"%' ORDER BY seq DESC";
			}
			else if(searchCon.equals("all")) {
				sql = "SELECT * FROM facility WHERE type='요양병원'";
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));
				fList.add(fdo);
				
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return fList;
	}
	
	public ArrayList<FacDo> typeLista() {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility where type='요양병원'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));

				fList.add(fdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return fList;
	}
	
	public ArrayList<FacDo> typeListb() {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility where type='요양원'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));

				fList.add(fdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return fList;
	}
	
	public ArrayList<FacDo> typeListc() {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility where type='방문요양'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));

				fList.add(fdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return fList;
	}
	
	public ArrayList<FacDo> typeListd() {
		ArrayList<FacDo> fList = new ArrayList<FacDo>();
		conn = JdbcUtil.getConnection();
		String sql = "select * from facility where type='단기보호'";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FacDo fdo = new FacDo();
				fdo.setSeq(rs.getInt(1));
				fdo.setName(rs.getString(2));
				fdo.setAddr(rs.getString(3));
				fdo.setImg1(rs.getString(4));
				fdo.setImg2(rs.getString(5));
				fdo.setImg3(rs.getString(6));
				fdo.setGrade(rs.getString(7));
				fdo.setDoctor(rs.getInt(8));
				fdo.setNum(rs.getInt(9));
				fdo.setType(rs.getString(10));

				fList.add(fdo);
			}
			JdbcUtil.close(rs, pstmt, conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return fList;
	}
}
