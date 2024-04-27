package YZ.Z1.dto;

public class BoardLikeDTO {
	private int board_number;
	private String likes_userid;
	public int getBoard_number() {
		return board_number;
	}
	public void setBoard_number(int board_number) {
		this.board_number = board_number;
	}
	public String getLikes_userid() {
		return likes_userid;
	}
	public void setLikes_userid(String likes_userid) {
		this.likes_userid = likes_userid;
	}
	
	@Override
	public String toString() {
		return "BoardLikeDTO [board_number=" + board_number + ", likes_userid=" + likes_userid + "]";
	}
	
	
}
