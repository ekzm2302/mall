package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("member")
public class MemberServiceImpl implements MemberService{
	@Autowired private MemberDAO dao;
	@Override
	public int member_join(MemberVO vo) {
		return dao.member_join(vo);
	}
	
}
