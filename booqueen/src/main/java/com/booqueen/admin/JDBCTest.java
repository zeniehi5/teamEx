package com.booqueen.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.booqueen.partner.member.MemberVO;

public class JDBCTest {
	
	public static void main(String[] args) {
		
		try {
			Class.forName("org.postgresql.Driver");
		} catch(ClassNotFoundException cnfe) {
			System.out.println("cnfe error");
		}
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:postgresql://booqueen.cfyochixjjoa.ap-northeast-2.rds.amazonaws.com:5432/booqueen";
		String user = "booqueen";
		String password = "jkho0128";
		
		MemberVO member = null;
		
		try {
			
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement("select * from pMember where email = ?");
			pstmt.setString(1, "aaaa@aa.com");
//			pstmt.setString(2, "1111");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new MemberVO();
				member.setEmail(rs.getString("email"));
				member.setPassword(rs.getString("password"));
				member.setLastName(rs.getString("lastname"));
				member.setFirstName(rs.getString("firstname"));
				member.setTelephone(rs.getString("telephone"));
				member.setActive(rs.getInt("active"));
				System.out.println("DB email : " + rs.getString("email"));
				System.out.println("DB password : " + rs.getString("password"));
				System.out.println("DB lastname : " + rs.getString("lastname"));
				System.out.println("DB firstname : " + rs.getString("firstname"));
				System.out.println("DB telephone : " + rs.getString("telephone"));
				System.out.println("DB active : " + rs.getString("active"));
			}
			
		} catch(SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
}