package YZ.Z1.dto;

import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;

public class BoardDTO {
	private int boardnumber;
	private String boardtitle;
	private String boardid;
	private String boardcontent;
	private int boardviews;
	private String boardimg;
	private String boardregdate;
	private MultipartFile[] boardfile; //이미지 파일
	
	
	public int getBoardnumber() {
		return boardnumber;
	}
	public void setBoardnumber(int boardnumber) {
		this.boardnumber = boardnumber;
	}
	public String getBoardtitle() {
		return boardtitle;
	}
	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}
	public String getBoardid() {
		return boardid;
	}
	public void setBoardid(String boardid) {
		this.boardid = boardid;
	}
	public String getBoardcontent() {
		return boardcontent;
	}
	public void setBoardcontent(String boardcontent) {
		this.boardcontent = boardcontent;
	}

	public int getBoardviews() {
		return boardviews;
	}
	public void setBoardviews(int boardviews) {
		this.boardviews = boardviews;
	}
	public String getBoardimg() {
		return boardimg;
	}
	public void setBoardimg(String boardimg) {
		this.boardimg = boardimg;
	}

	public MultipartFile[] getBoardfile() {
		return boardfile;
	}
	public void setBoardfile(MultipartFile[] boardfile) {
		this.boardfile = boardfile;
	}
	public String getBoardregdate() {
		return boardregdate;
	}
	public void setBoardregdate(String boardregdate) {
		this.boardregdate = boardregdate;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [boardnumber=" + boardnumber + ", boardtitle=" + boardtitle + ", boardid=" + boardid
				+ ", boardcontent=" + boardcontent + ", boardviews=" + boardviews + ", boardimg=" + boardimg
				+ ", boardregdate=" + boardregdate + ", boardfile=" + Arrays.toString(boardfile) + "]";
	}
	

	private MemberDto member;


	public MemberDto getMember() {
		return member;
	}
	
	public void setMember(MemberDto member) {
		this.member = member;
	}

}
