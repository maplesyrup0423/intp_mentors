package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TeacherBean {

   public TeacherBean() {
      this.TeacherLogin = false;
      this.TeacherIdExist = false;
   }
   
   private String Teacher_Name;
   private String Teacher_Birth;
   private String Teacher_Gender;
   private String Teacher_Email;
   private String Teacher_Tel;
   private String Teacher_Id;
   private String Teacher_Password;
   private String Teacher_Nickname;
   private String Teacher_Work_In;
   private String Teacher_Type;
   private String Teacher_Neis;

   private String Teacher_Password2; //비밀번호 확인용 비밀번호 2
   
   private boolean TeacherLogin; //로그인여부 확인
   private boolean TeacherIdExist; //회원 가입시 아이디 존재여부 확인(중복확인)
   
   
}