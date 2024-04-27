package YZ.Z1.dto;

public class BoardCommentDTO {
	private String comment_user;
	private String comment_content;
	private String comment_regdate;
	private int board_number;
	private int comment_number;
	
	public String getComment_user() {
		return comment_user;
	}
	public void setComment_user(String comment_user) {
		this.comment_user = comment_user;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_regdate() {
		return comment_regdate;
	}
	public void setComment_regdate(String comment_regdate) {
		this.comment_regdate = comment_regdate;
	}
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_nubmer) {
		this.board_number = board_nubmer;
	}
	public int getComment_number() {
		return comment_number;
	}
	public void setComment_number(int comment_number) {
		this.comment_number = comment_number;
	}
	@Override
	public String toString() {
		return "BoardCommentDTO [comment_user=" + comment_user + ", comment_content=" + comment_content
				+ ", comment_regdate=" + comment_regdate + ", board_nubmer=" + board_number + "]";
	}
	
	private MemberDto member;
	
	public MemberDto getMember() {
		return member;
	}
	public void setMember(MemberDto member) {
		this.member = member;
	}

	
	
	
}
