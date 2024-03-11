package kr.co.softsoldesk.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TeacherBean {

   public TeacherBean() {
      this.teacherLogin = false;
      this.teacherIdExist = false;
   }
   
   @Size(min=1, max=5)
   @Pattern(regexp = "[가-힣]*") //한글 문자
   private String teacher_Name;
   
   @Size(min=8, max=8)
   @Pattern(regexp = "[0-9]*")
   private String teacher_Birth;
   private String teacher_Gender;
   
   @Size(min=1, max=25)
   @Pattern(regexp = "^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$") //이메일 양식
   private String teacher_Email;
   
   @Pattern(regexp = "^0\\d{1,2}(-|\\))\\d{3,4}-\\d{4}$") //전화번호 양식
   private String teacher_Tel;
   
   @Size(min=1, max=15)
   @Pattern(regexp = "[a-zA-Z0-9]*")// 영어 또는 숫자만
   private String teacher_id;
   
   @Size(min=1, max=15)
   @Pattern(regexp = "[a-zA-Z0-9]*") //영어 또는 숫자만 
   private String teacher_Password;
   
   @Size(min=1, max=10)
   @Pattern(regexp = "[가-힣a-zA-Z]*") //한글 영문
   private String teacher_Nickname;
   
   @Size(min=1, max=13)
   @Pattern(regexp = "^[0-9a-zA-Z가-힣 ]*$") //한글 영문
   private String teacher_Work_In;
   private String teacher_Type;
   
   @Size(min=1, max=13)
   @Pattern(regexp = "[a-z0-9]*")
   private String teacher_Neis;
   
   @Size(min=1, max=15)
   @Pattern(regexp = "[a-zA-Z0-9]*") //영어 또는 숫자만 
   private String new_Password;
   
   @Size(min=1, max=15)
   @Pattern(regexp = "[a-zA-Z0-9]*")
   private String new_Password2; //비밀번호 변경 시 재확인용 비밀번호 2
   
   @Size(min=1, max=15)
   @Pattern(regexp = "[a-zA-Z0-9]*")
   private String teacher_Password2; //회원가입 시 재확인용 비밀번호 2
   
   private boolean teacherLogin; //로그인여부 확인
   private boolean teacherIdExist; //회원 가입시 아이디 존재여부 확인(중복확인)
   
	
   
   
}