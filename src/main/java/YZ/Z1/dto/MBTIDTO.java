package YZ.Z1.dto;

public class MBTIDTO {
	private String type1;
	private String type2;
	private String interaction;

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public String getInteraction() {
		return interaction;
	}

	public void setInteraction(String interaction) {
		this.interaction = interaction;
	}

	@Override
	public String toString() {
		return "MBTIDTO [type1=" + type1 + ", type2=" + type2 + ", interaction=" + interaction + "]";
	}
}
