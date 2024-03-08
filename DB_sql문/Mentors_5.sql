--userMapper slq 문

--로그인시 회원 정보 가져오기
select  teacher_name,teacher_birth,teacher_gender,teacher_email,teacher_tel,teacher_nickname,teacher_work_in,teacher_type,teacher_neis
from teacher_info where teacher_id = 'id1' and teacher_password='pw1';

--아이디 중복 확인
select teacher_name from teacher_info where teacher_id = 'id1';




--WTMapper sql
--리스트에 필요한 정보

select WT_Key, WT_Title, WT_Thumbnail,WT_Price from workplace_T;

--연수 상세페이지에 필요한 정보
select WT_Key,WT_Title,WT_Price,WT_TrainingTime,WT_Tag_School,WT_Tag_TypeCategory,WT_Thumbnail,
    WT_Info, WT_Text from workplace_T where WT_Key='WT2';


--cart sql
--특정 교사의 장바구니 정보
select * from cart;
select * from workplace_T;
select * from teacher_info;

--메인 테이블은 cart
--teacher_info테이블의 teacher_id='id1'일것! WT_Key를 이용해서 
--workplace_T의 테이블 WT_Thumbnail, WT_TrainingTime, WT_Title, WT_Price, WT_Key를 가져오고싶다.

select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt
inner join cart c on wt.WT_Key = c.WT_Key
inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id ='id1';

select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt inner join cart c on wt.WT_Key = c.WT_Key 
inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id='id1';


--특정 교사 장바구니에 있는 연수코드
select WT_key from cart where teacher_id='id1';
--특정 교사가 이미 결제한 연수 코드
select wt_key from WTT where teacher_id='id1';

--장바구니 삭제
delete from cart where WT_key='WT2';


--장바구니 결제시 insert
insert into WTT (WTT_Key,WT_Key,teacher_id,WTT_payment_date)values('WTT' || TO_CHAR(WTT_seqid.nextval),'WT21','id1',sysdate);
insert into wtt_test_a (WTT_Key)values('WTT41');

--????
select WT_Key from workplace_T where WT_Tag_School=1 and WT_Tag_Time=2 and WT_Tag_TypeCategory=2;

--WT_my_room
select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory
from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.WTT_Completion=0;

--wtt 시청시간
update WTT set WTT_viewing_time=10 where WTT_Key='WTT161';

--wtt 시험

--class
select wtt.wtt_Key,wtt.wt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, 
wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.wtt_Key='';


--
select test_aa from wtt_test_a where WTT_Key='wtt161'; 


--시험 테스트

update wtt set wtt_viewing_time=700 where wtt_key='WTT169';
update wtt set wtt_completion=0 where wtt_key='WTT169';
insert into wt_test_q values ('WT29','',1,2,3,4,1,2,3,4,1,2);
UPDATE wtt_test_a set test_aa=0 where wtt_key='WTT169';










COMMIT;
