--userMapper slq ��

--�α��ν� ȸ�� ���� ��������
select  teacher_name,teacher_birth,teacher_gender,teacher_email,teacher_tel,teacher_nickname,teacher_work_in,teacher_type,teacher_neis
from teacher_info where teacher_id = 'id1' and teacher_password='pw1';

--���̵� �ߺ� Ȯ��
select teacher_name from teacher_info where teacher_id = 'id1';




--WTMapper sql
--����Ʈ�� �ʿ��� ����

select WT_Key, WT_Title, WT_Thumbnail,WT_Price from workplace_T;

--���� ���������� �ʿ��� ����
select WT_Key,WT_Title,WT_Price,WT_TrainingTime,WT_Tag_School,WT_Tag_TypeCategory,WT_Thumbnail,
    WT_Info, WT_Text from workplace_T where WT_Key='WT2';


--cart sql
--Ư�� ������ ��ٱ��� ����
select * from cart;
select * from workplace_T;
select * from teacher_info;

--���� ���̺��� cart
--teacher_info���̺��� teacher_id='id1'�ϰ�! WT_Key�� �̿��ؼ� 
--workplace_T�� ���̺� WT_Thumbnail, WT_TrainingTime, WT_Title, WT_Price, WT_Key�� ��������ʹ�.

select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt
inner join cart c on wt.WT_Key = c.WT_Key
inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id ='id1';

select wt.WT_Thumbnail, wt.WT_TrainingTime, wt.WT_Title, wt.WT_Price, wt.WT_Key from workplace_T wt inner join cart c on wt.WT_Key = c.WT_Key 
inner join teacher_info t on c.teacher_id = t.teacher_id and c.teacher_id='id1';


--Ư�� ���� ��ٱ��Ͽ� �ִ� �����ڵ�
select WT_key from cart where teacher_id='id1';
--Ư�� ���簡 �̹� ������ ���� �ڵ�
select wt_key from WTT where teacher_id='id1';

--��ٱ��� ����
delete from cart where WT_key='WT2';


--��ٱ��� ������ insert
insert into WTT (WTT_Key,WT_Key,teacher_id,WTT_payment_date)values('WTT' || TO_CHAR(WTT_seqid.nextval),'WT21','id1',sysdate);
insert into wtt_test_a (WTT_Key)values('WTT41');

--????
select WT_Key from workplace_T where WT_Tag_School=1 and WT_Tag_Time=2 and WT_Tag_TypeCategory=2;

--WT_my_room
select wtt.wtt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory
from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.WTT_Completion=0;

--wtt ��û�ð�
update WTT set WTT_viewing_time=10 where WTT_Key='WTT161';

--wtt ����

--class
select wtt.wtt_Key,wtt.wt_Key,wtt.WTT_Completion, wtt.wtt_payment_date, wt.wt_Title, 
wt.wt_TrainingTime, wt.wt_Tag_School, wt.wt_Tag_TypeCategory from workplace_t wt inner join wtt on wtt.WT_key=wt.WT_key and wtt.wtt_Key='';


--
select test_aa from wtt_test_a where WTT_Key='wtt161'; 


--���� �׽�Ʈ

update wtt set wtt_viewing_time=700 where wtt_key='WTT169';
update wtt set wtt_completion=0 where wtt_key='WTT169';
insert into wt_test_q values ('WT29','',1,2,3,4,1,2,3,4,1,2);
UPDATE wtt_test_a set test_aa=0 where wtt_key='WTT169';







--noti
SELECT noti_key, WT_Key, noti_Title, noti_content, noti_date FROM Notification where wt_key='WT21';
select WT_Key from wtt where wtt_key='WTT161';
SELECT noti_key, WT_Key, noti_Title, noti_content, noti_date FROM Notification where noti_key='noti3';

--q
select q.q_key, q.WTT_Key, q.q_Title, q.q_content, q.q_a_check, q.q_date,ti.teacher_name 
from qna_q q INNER join wtt w on w.wtt_key=q.wtt_key INNER join teacher_info ti on ti.teacher_id=w.teacher_id ;

select q.q_key, q.WTT_Key, q.q_Title, q.q_content, q.q_a_check, q.q_date,ti.teacher_name 
from wtt w inner join workplace_t wt on w.wt_key=wt.wt_key and wt.wt_key='WT21' INNER JOIN qna_q q on q.wtt_key=w.wtt_key
inner join teacher_info ti on ti.teacher_id=w.teacher_id;

select q.q_key, q.q_date, q.q_title, q.q_content, t.teacher_name, a.a_content, wt.wt_title
from qna_q q inner join qna_a a on a.q_key=q.q_key
inner join WTT w on w.WTT_Key=q.WTT_Key
inner join workplace_T wt on w.WT_Key = wt.WT_Key;
--inner join teacher_info t on t.teacher_id=w. teacher_id and q.q_key='qk2';


select q.q_key, q.q_date, q.q_title, q.q_content, t.teacher_name, wt.wt_title
from qna_q q inner join WTT w on w.WTT_Key=q.WTT_Key
inner join workplace_T wt on w.WT_Key = wt.WT_Key
inner join teacher_info t on t.teacher_id=w. teacher_id and q.q_key='qk2';

select a_content from qna_a where q_key='qk2';



update qna_a set a_content='aaa' where q_key='qk45'; 
update qna_q set q_a_check=1 where q_key='qk45';


select teacher_id, teacher_name, teacher_password, teacher_nickname, teacher_neis
from teacher_info;

delete from teacher_info where teacher_id='';

select t.teacher_id, t.teacher_neis, wt.wt_key, wt.wt_title, wt.wt_price, wtt.wtt_payment_date
from wtt wtt
inner join workplace_t wt on wtt.wt_key = wt.wt_key
inner join teacher_info t on wtt.teacher_id = t.teacher_id;


COMMIT;
