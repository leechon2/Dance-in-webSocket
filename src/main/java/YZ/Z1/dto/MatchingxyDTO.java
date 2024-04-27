package YZ.Z1.dto;

public class MatchingxyDTO {
	String coordinates_user;
	@Override
	public String toString() {
		return "MatchingxyDTO [coordinates_user=" + coordinates_user + ", coordinates_logitude=" + coordinates_logitude
				+ ", coordinates_latitude=" + coordinates_latitude + "]";
	}

	String coordinates_logitude;
	String coordinates_latitude;

	public String getCoordinates_user() {
		return coordinates_user;
	}

	public void setCoordinates_user(String coordinates_user) {
		this.coordinates_user = coordinates_user;
	}

	public String getCoordinates_logitude() {
		return coordinates_logitude;
	}

	public void setCoordinates_logitude(String coordinates_logitude) {
		this.coordinates_logitude = coordinates_logitude;
	}

	public String getCoordinates_latitude() {
		return coordinates_latitude;
	}

	public void setCoordinates_latitude(String coordinates_latitude) {
		this.coordinates_latitude = coordinates_latitude;
	}

}
