package YZ.Z1.dto;

public class BlockDTO {
	private String block_userid;
	private String block_targetid;
	private String block_regdate;
	public String getBlock_userid() {
		return block_userid;
	}
	public void setBlock_userid(String block_userid) {
		this.block_userid = block_userid;
	}
	public String getBlock_targetid() {
		return block_targetid;
	}
	public void setBlock_targetid(String block_targetid) {
		this.block_targetid = block_targetid;
	}
	public String getBlock_regdate() {
		return block_regdate;
	}
	@Override
	public String toString() {
		return "BlockDTO [block_userid=" + block_userid + ", block_targetid=" + block_targetid + ", block_regdate="
				+ block_regdate + "]";
	}
	public void setBlock_regdate(String block_regdate) {
		this.block_regdate = block_regdate;
	}
	
}
