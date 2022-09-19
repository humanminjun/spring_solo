package com.myspring.dentist.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.myspring.dentist.member.vo.MemberVO;

public interface MemberService {
	public List listMembers()throws DataAccessException;
	public MemberVO loginDO(MemberVO memberVO)throws DataAccessException;
	public int remove(String id)throws DataAccessException;
	public int add(MemberVO memberVO)throws DataAccessException;
}
