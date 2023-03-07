package member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO implements MemberService{
	@Autowired @Qualifier("pcj") private SqlSession sql;
	@Override
	public int member_join(MemberVO vo) {
		return sql.insert("lo.insert", vo);
	}

}
