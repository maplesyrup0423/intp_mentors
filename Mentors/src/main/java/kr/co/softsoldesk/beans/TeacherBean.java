package kr.co.softsoldesk.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TeacherBean {

   public TeacherBean() {
      this.TeacherLogin = false;
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

   
   private boolean TeacherLogin;
   
}