package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TeacherBean {

   public TeacherBean() {
      this.teacherLogin = false;
      this.teacherIdExist = false;
   }
   
   private String teacher_Name;
   private String teacher_Birth;
   private String teacher_Gender;
   private String teacher_Email;
   private String teacher_Tel;
   private String teacher_id;
   private String teacher_Password;
   private String teacher_Nickname;
   private String teacher_Work_In;
   private String teacher_Type;
   private String teacher_Neis;

   private String new_Password;
   private String new_Password2; //비밀번호 변경 시 재확인용 비밀번호 2
   private String teacher_Password2; //회원가입 시 재확인용 비밀번호 2
   
   private boolean teacherLogin; //로그인여부 확인
   private boolean teacherIdExist; //회원 가입시 아이디 존재여부 확인(중복확인)
   
	
   
   
}