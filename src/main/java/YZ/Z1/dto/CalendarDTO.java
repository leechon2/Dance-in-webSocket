package YZ.Z1.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CalendarDTO {
	private String calendar_userId;
	private String calendar_targetId;
	private String calendar_regdate;
	private String calendar_content;
	public String getCalendar_userId() {
		return calendar_userId;
	}
	public void setCalendar_userId(String calendar_userId) {
		this.calendar_userId = calendar_userId;
	}
	public String getCalendar_targetId() {
		return calendar_targetId;
	}
	public void setCalendar_targetId(String calendar_targetId) {
		this.calendar_targetId = calendar_targetId;
	}
	public String getCalendar_regdate() {
		return calendar_regdate;
	}
	public void setCalendar_regdate(String calendar_regdate) {
		this.calendar_regdate = calendar_regdate;
	}
	public String getCalendar_content() {
		return calendar_content;
	}
	@Override
	public String toString() {
		return "CalenderDTO [calendar_userId=" + calendar_userId + ", calendar_targetId=" + calendar_targetId
				+ ", calendar_regdate=" + calendar_regdate + ", calendar_content=" + calendar_content + "]";
	}
	public void setCalendar_content(String calendar_content) {
		this.calendar_content = calendar_content;
	}
	
	
	
}
