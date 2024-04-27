package YZ.Z1.dto;

public class BookMarkDTO {
	private String bookmark_userid;
	private String bookmark_targetid;
	private String bookmark_regdate;
	public String getBookmark_userid() {
		return bookmark_userid;
	}
	public void setBookmark_userid(String bookmark_userid) {
		this.bookmark_userid = bookmark_userid;
	}
	public String getBookmark_targetid() {
		return bookmark_targetid;
	}
	public void setBookmark_targetid(String bookmark_targetid) {
		this.bookmark_targetid = bookmark_targetid;
	}
	public String getBookmark_regdate() {
		return bookmark_regdate;
	}
	public void setBookmark_regdate(String bookmark_regdate) {
		this.bookmark_regdate = bookmark_regdate;
	}
	@Override
	public String toString() {
		return "BookMarkDTO [bookmark_userid=" + bookmark_userid + ", bookmark_targetid=" + bookmark_targetid
				+ ", bookmark_regdate=" + bookmark_regdate + "]";
	}

}
