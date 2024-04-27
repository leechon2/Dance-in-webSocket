package YZ.Z1.Matching;

import java.io.File;
import java.util.Arrays;

public class MemberDTOrev {
	   
	   private String user_id;
	   private String user_name;
	   private String user_pw;
	   private String user_birth;
	   private String user_mbti;
	   private String user_style;
	   private String user_address;
	   private String user_career;
	   private String user_height;
	   private String user_weight;
	   private String user_img[];
	   private String user_hobby;
	   private String user_email;
	   private String user_nickname;
	   private String user_phonenumber;
	   private String user_gender;
	   private String user_idealtype;
	   private String user_pr;
	   private String user_ps;
	   private String user_persnality;
	   private String user_regdate;
	   private String user_state;
	   private File user_imgfiles[];
	   
	   public String[] getUser_img() {
	      return user_img;
	   }
	   public void setUser_img(String[] user_img) {
	      this.user_img = user_img;
	   }
	   public String getUser_id() {
	      return user_id;
	   }
	   public void setUser_id(String user_id) {
	      this.user_id = user_id;
	   }
	   public String getUser_name() {
	      return user_name;
	   }
	   public void setUser_name(String user_name) {
	      this.user_name = user_name;
	   }
	   public String getUser_pw() {
	      return user_pw;
	   }
	   public void setUser_pw(String user_pw) {
	      this.user_pw = user_pw;
	   }
	   public String getUser_birth() {
	      return user_birth;
	   }
	   public void setUser_birth(String user_birth) {
	      this.user_birth = user_birth;
	   }
	   public String getUser_mbti() {
	      return user_mbti;
	   }
	   public void setUser_mbti(String user_mbti) {
	      this.user_mbti = user_mbti;
	   }
	   public String getUser_style() {
	      return user_style;
	   }
	   public void setUser_style(String user_style) {
	      this.user_style = user_style;
	   }
	   public String getUser_address() {
	      return user_address;
	   }
	   public void setUser_address(String user_address) {
	      this.user_address = user_address;
	   }
	   public String getUser_career() {
	      return user_career;
	   }
	   public void setUser_career(String user_career) {
	      this.user_career = user_career;
	   }
	   public String getUser_height() {
	      return user_height;
	   }
	   public void setUser_height(String user_height) {
	      this.user_height = user_height;
	   }
	   public String getUser_weight() {
	      return user_weight;
	   }
	   public void setUser_weight(String user_weight) {
	      this.user_weight = user_weight;
	   }
	   public String getUser_hobby() {
	      return user_hobby;
	   }
	   public void setUser_hobby(String user_hobby) {
	      this.user_hobby = user_hobby;
	   }
	   public String getUser_email() {
	      return user_email;
	   }
	   public void setUser_email(String user_email) {
	      this.user_email = user_email;
	   }
	   public String getUser_nickname() {
	      return user_nickname;
	   }
	   public void setUser_nickname(String user_nickname) {
	      this.user_nickname = user_nickname;
	   }
	   public String getUser_phonenumber() {
	      return user_phonenumber;
	   }
	   public void setUser_phonenumber(String user_phonenumber) {
	      this.user_phonenumber = user_phonenumber;
	   }
	   public String getUser_gender() {
	      return user_gender;
	   }
	   public void setUser_gender(String user_gender) {
	      this.user_gender = user_gender;
	   }
	   public String getUser_idealtype() {
	      return user_idealtype;
	   }
	   public void setUser_idealtype(String user_idealtype) {
	      this.user_idealtype = user_idealtype;
	   }
	   public String getUser_pr() {
	      return user_pr;
	   }
	   public void setUser_pr(String user_pr) {
	      this.user_pr = user_pr;
	   }
	   public String getUser_ps() {
	      return user_ps;
	   }
	   public void setUser_ps(String user_ps) {
	      this.user_ps = user_ps;
	   }
	   public String getUser_persnality() {
	      return user_persnality;
	   }
	   public void setUser_persnality(String user_persnality) {
	      this.user_persnality = user_persnality;
	   }
	   public String getUser_regdate() {
	      return user_regdate;
	   }
	   public void setUser_regdate(String user_regdate) {
	      this.user_regdate = user_regdate;
	   }
	   public String getUser_state() {
	      return user_state;
	   }
	   public void setUser_state(String user_state) {
	      this.user_state = user_state;
	   }
	   public File[] getUser_imgfiles() {
	      return user_imgfiles;
	   }
	   public void setUser_imgfiles(File[] user_imgfiles) {
	      this.user_imgfiles = user_imgfiles;
	   }
	   @Override
	   public String toString() {
	      return "MemberDto [user_id=" + user_id + ", user_name=" + user_name + ", user_pw=" + user_pw + ", user_birth="
	            + user_birth + ", user_mbti=" + user_mbti + ", user_style=" + user_style + ", user_address="
	            + user_address + ", user_career=" + user_career + ", user_height=" + user_height + ", user_weight="
	            + user_weight + ", user_img=" + Arrays.toString(user_img) + ", user_hobby=" + user_hobby
	            + ", user_email=" + user_email + ", user_nickname=" + user_nickname + ", user_phonenumber="
	            + user_phonenumber + ", user_gender=" + user_gender + ", user_idealtype=" + user_idealtype
	            + ", user_pr=" + user_pr + ", user_ps=" + user_ps + ", user_persnality=" + user_persnality
	            + ", user_regdate=" + user_regdate + ", user_state=" + user_state + ", user_imgfiles="
	            + Arrays.toString(user_imgfiles) + "]";
	   }
	   
	}