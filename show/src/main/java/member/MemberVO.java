package member;

import java.io.Serializable;

public class MemberVO implements Serializable{
    /* Serializable : 클래스를 VO로 쓰기 위해 반드시 구현해야 하는 인터페이스 */
	private static final long serialVersionUID = 1L;
	private String userid;
	private String userpw;
	private String username;
	private String address;
	private String email;
	private int tel;
	private String birth;
	
	public MemberVO() { /* 디폴트 생성자 */
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String userid, String userpw, String username, 
           String address, String email, int tel, String birth) { /* 사용자 생성자 */
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.address = address;
		this.email = email;
		this.tel = tel;
		this.birth = birth;
	}

    /* getters and setters */
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    /* hashcode and equals : userid와 userpw가 같으면 동일한 것으로 간주하게 설정 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userid == null) ? 0 : userid.hashCode());
		result = prime * result + ((userpw == null) ? 0 : userpw.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		if (userid == null) {
			if (other.userid != null)
				return false;
		} else if (!userid.equals(other.userid))
			return false;
		if (userpw == null) {
			if (other.userpw != null)
				return false;
		} else if (!userpw.equals(other.userpw))
			return false;
		return true;
	}
}