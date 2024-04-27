package YZ.Z1.service;

import YZ.Z1.dto.MemberDto;

public class test {

	public static void main(String[] args) {
//		String extendname = "member.exet";
//		int extendIdxextendname = extendname.lastIndexOf(".");
//		extendname = extendname.substring(extendIdxextendname);
//		String secondName = String.format("%0"+2+"d",0+1);
//		System.out.println(extendIdxextendname);
//		System.out.println(extendname);
//		System.out.println(secondName);
		String origin = "1985020301.jpg_1985020302.jpg_1985020303.jpg_1985020304.jpg_";
		String split[] = origin.split("_");
		for(String s : split) {
		    System.out.println(s+" index");
		}
		for(int i = 0; i < split.length ; i++) {
			System.out.println(split[i]+" index()");
			
		}
	}

}
