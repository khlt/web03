package com.shop.test;

import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.shop.common.BoardVO;
import com.shop.common.MemberVO;
import com.shop.model.BoardDAO;
import com.shop.model.MemberDAO;

class DAOTest {
	private BoardDAO dao1;
	private MemberDAO dao2;
	private BoardVO vo1;
	private MemberVO vo2;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		System.out.println("인스턴스 시작");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		System.out.println("인스턴스 종료");
	}

	@BeforeEach
	void setUp() throws Exception {
		vo1 = new BoardVO();
		dao1 = new BoardDAO();
		vo1.setTitle("유닛테스트 제목1");
		vo1.setContent("JUnit Test 입니다.");
		vo1.setNickname("admin");
		
		vo2 = new MemberVO();
		dao2 = new MemberDAO();
		//vo2.setUserid("");
		//
		System.out.println("DAO 테스트시작");
	}

	@AfterEach
	void tearDown() throws Exception {
		System.out.println("DAO 테스트종료");
	}

	@Test
	void DAOtest1() {
		dao1.addBoard(vo1);		
		fail("BoardDAO 테스트 실패");
	}

	@Test
	void DAOtest2() {
		//dao2.addMember(vo2);
		fail("MemberDAO 테스트 실패");
	}
}
