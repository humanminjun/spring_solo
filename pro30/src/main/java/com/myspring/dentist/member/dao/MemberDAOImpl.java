package com.myspring.dentist.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.dentist.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllMemberList() throws DataAccessException {
		List membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public MemberVO login(MemberVO memberVO) throws DataAccessException {
		 MemberVO login = sqlSession.selectOne("mapper.member.loginById", memberVO);
		return login;
	}

	@Override
	public int deleteMember(String id) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", id);
		return result;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int insert = sqlSession.insert("mapper.member.insertMember", memberVO);
		return insert;
	}
	
	
	
}
