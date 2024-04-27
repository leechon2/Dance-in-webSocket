package YZ.Z1.dto;

public class MatchingDto {
	private String matching_reqid;
	private String matching_respid;
	private String matching_state;
	private String matching_regdate;
	
	MemberDto memInfo;
	
	
	
	public String getMatching_reqid() {
		return matching_reqid;
	}
	public void setMatching_reqid(String matching_reqid) {
		this.matching_reqid = matching_reqid;
	}
	public String getMatching_respid() {
		return matching_respid;
	}
	public void setMatching_respid(String matching_respid) {
		this.matching_respid = matching_respid;
	}
	public String getMatching_state() {
		return matching_state;
	}
	public void setMatching_state(String matching_state) {
		this.matching_state = matching_state;
	}
	public String getMatching_regdate() {
		return matching_regdate;
	}
	public void setMatching_regdate(String matching_regdate) {
		this.matching_regdate = matching_regdate;
	}
	@Override
	public String toString() {
		return "MatchingDto [matching_reqid=" + matching_reqid + ", matching_respid=" + matching_respid
				+ ", matching_state=" + matching_state + ", matching_regdate=" + matching_regdate + "]";
	}
	
}
