set define off;
--&를 변수로 사용하지 않겠다는 구문
--위 구문을 실행해야 정상적으로 데이터 insert 가능

-------------- list.jsp에 쓸 sql
select BK_img, BK_title, BK_autor, BK_isbn, BK_date, BK_price
from booklist
where BK_category = 3;

--------------제이터 확인용 select
select * from booklist;
select BK_Key,BK_title,BK_category from booklist;
select BK_Key,BK_img,BK_title,BK_autor,BK_date,BK_isbn,BK_price from booklist;
select BK_Key,BK_img,BK_title,BK_autor,BK_date,BK_isbn,BK_price from booklist where BK_category=2;

select BK_Key,BK_img, BK_title,BK_autor,BK_date,BK_isbn,BK_publisher,BK_price,BK_yes24,BK_ald,BK_kobo
,BK_info, BK_content,BK_autorinfo,BK_category from booklist where BK_Key='BOOK1';

select BK_Key,BK_title from booklist where BK_category=1;
select BK_Key,BK_title from booklist where BK_category=2;
select BK_Key,BK_title from booklist where BK_category=3;
select BK_Key,BK_title from booklist where BK_category=4;
select BK_Key,BK_title from booklist where BK_category=5;
select BK_Key,BK_title from booklist where BK_category=6;
select BK_Key,BK_title from booklist where BK_category=7;
--------------

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'2022개정교육과정기반교사교육과정과수업디자인','2022 개정 교육과정 기반 교사 교육과정과 수업 디자인',
'유영식','2023년 6월 1일','9791163461739','테크빌교육',17000,'https://www.yes24.com/Product/Goods/119001502','https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=317009933',null,
' <strong>교육과정 베스트셀러 『수업 잘하는 교사는 루틴이 있다』, <br>
   『교육과정 문해력』, 『과정중심평가』에 이은 또 하나의 역작!<br><br></strong>
   
   교육과정 ‘정책참여’와 ‘실천’을 바탕으로 ‘성과’를 거두고 ‘나눔’을 하고 있는 유영식 선생님의 『2022 개정 교육과정 기반 교사 교육과정과 수업 디자인』. 이 책은 유영식의 교육과정 베스트셀러 
   『수업 잘하는 교사는 루틴이 있다』, 『교육과정 문해력』 『과정중심평가』에 이은 또 하나의 역작으로, ‘2022 개정 교육과정’의 핵심을 잘 짚어 누구나 알기 쉽게 제시한 따끈따끈 최신간이다. 
   이 책은 2022 개정 교육과정의 핵심인 “미래사회의 불확실성에 능동적으로 대응할 수 있는” 역량과 학생 주도성을 키우기 위해 강조하고 있는 ‘학교 자율시간’과 ‘깊이 있는 학습’의 본질과 
   이를 실제 교육으로 구현하기 위한 교사 교육과정과 수업 디자인 과정을 구체적으로 제시하였다. 나아가 현장 교사의 관점에서 해석하고 실행하기 위한 다양한 방안들을 담고 있다.',
'   프롤로그<br>
   <br>
   <strong>Part 1. 미래교육이 원하는 교육과정</strong><br>
   <br>
   미래교육, 교육과정으로 말한다<br>
   Student Agency를 위한 교육과정<br>
   Teacher Agency로 만드는 교육과정<br>
   Co-agency로 함께 만드는 교육과정<br>
   <br>
   <strong>Part 2. 학교 자율시간으로 만드는 교사 교육과정</strong><br>
   <br>
   학교와 교사에게 공간을 許하다<br>
   교사 교육과정이란 무엇인가?<br>
   학교 자율시간과 교사 교육과정의 관계<br>
   학교 자율시간을 활용한 교육과정의 현주소<br>
   주제 중심, 프로젝트 교육과정 재구성하고 다른 건가요?<br>
   학교 자율시간이 가진 양날의 검<br>
   반쪽짜리 자율<br>
   학교 자율시간의 힘<br>
   <br>
   <strong>Part 3. 2022 개정 교육과정 문해력 키우기</strong><br>
   <br>
   2022 개정 교육과정, 무엇이 달라졌는가?<br>
   2022 개정 교육과정 총론 읽는 법<br>
   2022 개정 교과 교육과정(각론)의 생성 원리<br>
   2022 개정 교과 교육과정(각론) 문서 보는 법<br>
   2022 개정 교육과정 성취기준의 특징<br>
   <br>
   <strong>Part 4. 학교 자율시간을 활용한 교사 교육과정 디자인 노하우</strong><br>
   <br>
   학교 자율시간, 어떻게 만들어내는가?<br>
   학교 자율시간, 몇 시간이면 되겠니?<br>
   학교 자율시간 유형 1 : 교과 기반형<br>
   학교 자율시간 유형 2 : 순수 자율시간 기반형<br>
   학교 자율시간 유형 3 : 학교 자율시간 Max형<br>
   학교 자율시간, 무엇을 담아야 할까?<br>
   학교 자율시간, 처음부터 끝까지 설계 프로세스<br>
   학교 자율시간, 종이 vs 실제<br>
   학교 자율시간, 쉽게 접근하고 실천하는 법<br>
   클라우드 교육과정으로 함께 만드는 학교 자율시간<br>
   학교 자율시간을 만드는 성취기준 재구조화 방법<br>
   학교 자율시간의 성취기준, 내용체계표 개발 방법<br>
   학교 자율시간, 평가와 기록은 어떻게 하나?<br>
   학교 자율시간을 만들 수 있는 추가 옵션<br>
   시민성 함양 교육과 학교 자율시간<br>
   생태전환 교육과 학교 자율시간<br>
   디지털·AI 소양 교육과 학교 자율시간<br>
   진로 연계 교육과 학교 자율시간<br>
   처음 시작하는 학교를 위한 TIP<br>
   학교 자율시간 Q&A<br>
   <br>
   <strong>Part 5. 깊이 있는 학습을 위한 수업 디자인</strong><br>
   <br>
   깊이 있는 학습이란?<br>
   핵심 아이디어란 무엇이고, 어떻게 쓸 것인가?<br>
   개념 기반 교육과정과 수업<br>
   깊이 있는 학습, 어떻게 할 것인가?<br>
   깊이 있는 학습을 만드는 현실적인 대안은 무엇인가?<br>
   깊이 있는 학습을 만드는 수업 루틴<br>
   탐구질문, 어떻게 할까?<br>
   2022 개정 교육과정의 과정 중심 평가<br>
   깊이 있는 학습을 위한 평가<br>
   <br>
   에필로그<br>
   참고문헌<br>',
'
 <strong>유영식</strong><br>
   <br>
   <br>
   유영식 선생님은 교육과정 &lt;정책참여&gt;와 &lt;실천&gt; 경험을 바탕으로 <br>
   다음의 &lt;성과&gt;를 거두고, &lt;나눔&gt;을 하고 있습니다.<br>
   <br>
   <br>
   <br>
  <strong> &lt;정책참여&gt;</strong><br>
   2022 개정 교육과정 총론 주요사항 설정 연구원<br>
   2022 개정 교과교육과정 각론조정 연구원<br>
   국가교육과정 개정 추진위원<br>
   경기도교육청 교육과정 및 평가 정책 추진단( 2011~현재)<br>
   <br>
   <br>
   <br>
   <strong> &lt;실천&gt;</strong><br>
   2022 개정 교육과정 교육부 정책 연구학교 주무교사<br>
   교육과정 연구부장(초창기 혁신학교 등 총 10년)<br>
   다문화 교육과정 개발 교육부 정책 연구학교 주무교사<br>
   경기도교육청 학교 자율 교육과정 실천학교 담당<br>
   <br>
   <br>
   <br>
   <strong> &lt;성과&gt;</strong><br>
   교육과정 분야 전국현장교육연구대회 1등급 푸른기장 3회 수상<br>
   교육과정 분야 교육부 장관 표창<br>
   대한민국 수학교사상<br>
   경기도교육청 수업명인<br>
   수업우수교사제 1등급 3회 수상<br>
   학교 자율 교육과정 실천 우수교 기관 표창<br>
   <br>
   <br>
   <br>
   <strong> &lt;나눔&gt;</strong><br>
   전국 17개 시도교육청 및 교육연수원 교육과정-수업-평가 분야<br>
   교감자격, 1급정교사 자격, 신규교사, 수석교사, 신규전문직 직무 연수 강사<br>
   EBS교육대토론(교육과정 개혁), 미래교육플러스 패널 출연<br>
   티처빌 원격교육연수원(교사교육과정, 과정중심평가) 강사<br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <strong>저서</strong><br>
   수업 잘하는 교사는 루틴이 있다(2020)<br>
   교육과정문해력(2018)<br>
   과정중심평가(2017)<br>
   <br>
   <br>
   <br>
   * e-mail : neoyoo99@naver.com<br>
   * SNS : facebook.com/neoyoo99<br>',
1);




insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'중등학급경영','(개정판) 중등 학급경영',
'최선경','2023년 1월 15일','9791163461678','테크빌교육',18000,
'https://www.yes24.com/Product/Goods/117187672','https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=309944362','https://product.kyobobook.co.kr/detail/S000200826653',
'<strong> 행복한 교실관리 치유서!<br></strong>
행복한 교사가 되는 첫 번째 조건은 학급경영 철학이다. 한 시간 수업을 충실히 하는 것도 물론 중요하지만, 어떠한 상황에서도 학생들이 자기주도적으로 학습할 수 있도록 성장시키는 것이 중요한 까닭이다. 따라서 교사, 특히 담임교사는 자신의 역할에 대한 전문성을 인식하고 자신만의 학급경영 철학을 세우면서 경험을 늘려 갈 때, 아이들과 함께 성장할 수 있다.<br>
학급경영 사례를 보강하여 출간한 『개정판 중등 학급경영』은 교사성장학교인 ‘고래학교’ 최선경 선생님의 학급경영 철학 세우기부터 성공적인 학급경영 과정과 노하우를 풍성하게 담고 있다. 나아가 행복한 담임교사가 되기 위한 기술을 제시하고 있다.<br>
온라인·오프라인 수업과 학생, 교사, 학부모 관계에서 지치고 힘든 선생님들이 다시 힘을 내어 크게 한 발짝 나아갈 수 있게 하는 ‘행복한 교실관리 치유서’이다.<br>',
'

   추천사<br>
   <br>
   프롤로그<br>
   <br>
   
   <strong>1장 담임, 교사의 꽃<br></strong>
   1. 학급경영, 그 중요함에 대해 | 2. 학급경영, 철학 세우기 | 3. 학급경영, 그 원칙과 실제 | 4. 학급경영, 디자인하기 | 5. 고쌤의 남다른 학급경영 노하우
   <br>
   (Special Corner) 중학생이 후배에게 들려주는 중학교 생활을 위한 조언 _김아윤
   <br><br>
   <strong>2장 특색 있는 학급경영<br></strong>
   1. 3월 첫 만남 준비 | 2. 오늘의 한 줄 | 3. 고래카드 필사 100 |4. 성장 일기 106 | 5. 100일 파티 115 | 6. 선생님 사용 설명서 |7. 얼음 깨기 활동들 | 8. 민주적인 학급 임원 선거 | 9. 소통하는 학부모 총회
   <br>
   (Special Corner) 학급비는 이렇게 사용하세요!
   <br><br>
   <strong>3장 교사와 학생이 함께 만들어 가는 학급경영 이야기<br></strong>
   1. 좌충우돌 신규 교사 학급경영기 _ 최선경 서동중학교 선생님 | 2. 2년 만의 담임 _ 김영림 새론중학교 선생님 | 3. 학급경영에 마법 같은 비법은 없다 _ 최선경 서동중학교 선생님 | 4. 66일 프로젝트와 고래카드 활용기 _ 이경희 심원고등학교 선생님 | 5. ‘생각을 7하는’ 학급경영 _ 최선경 서동중학교 선생님 | 6. 착한 학급 선정 프로젝트 _ 이용걸 대구보건고등학교 선생님 | 7. 모모씨를 부탁해! 고전 읽기 _ 최선경 서동중학교 선생님
   <br><br>
   <strong>4장 행복한 담임교사가 되기 위한 기술</strong>
   <br>
   1. 교사가 행복해야 아이들이 행복하다 | 2. 연수를 성장의 기회로 삼아라 | 3. 자기 계발로 나다운 담임교사가 되어라 | 4. 전문적 학습공동체 속에서 성장하라 | 5. 낯선 행동을 다루는 소통의 기술
   <br><br>
   
   에필로그<br>
   
   참고 자료<br>',
'   <strong>최선경<br></strong>
   <br>
   호기심 많고 정 많은 영어 교사이자 교사성장학교인 ‘고래학교’ 교장. 학생과 교사 모두가 행복해지도록 돕는 체인지메이커로서 배우고 익힌 것을 퍼뜨리기가 전공이다.
   <br>
   『긍정의 힘으로 교직을 디자인하라』, 『가슴에 품은 여행』, 『작지만 확실한 습관 만드는 방법 10가지』를 출간했고, 공저로 『체인지메이커 교육』, 『변화의 시작, 이기적으로 나를 만나는 시간』 , 『가끔은 나빴고 거의가 좋았다』, 『디지털 노마드 세대를 위한 미래교육 미래학교』, 『100일간의 두드림, 배움이 이끄는 삶』, 『독서법으로 삶을 리드하라』를 출간했다. 또한 『프로젝트 수업 어떻게 할 것인가』, 『선생님의 영혼을 위한 닭고기 수프』, 『디퍼러닝』, 『교실에서 바로 쓸 수 있는 낯선 행동 솔루션 50』을 공역, 출간했다.
   <br>
   [프로젝트 수업 어디까지 해봤니], [체인지메이커로 우리 교실을 체인지한다], [교사 공감 행복한 교사가 되는 15가지 습관], [미래 교육의 혁신, 디퍼러닝] 원격연수 강사로도 활동하고 있다.
   <br><br>
   * 블로그: 선경쌤의 선경지명(blog.naver.com/dntjraka75)
',
2);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'인공지능활용교육','인공지능 활용교육',
'이동국','2023년 9월 22일','9791163461852','테크빌교육',20000,
null,null,null,null,null,null,3);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'따뜻한마음이자라는초등그림책쓰기수업','따뜻한 마음이 자라는 초등 그림책 쓰기 수업',
'오정남','2021년 6월 30일','9791163461289','테크빌교육',17000,
null,null,null,null,null,null,4);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'수요시식회필사노트','수요시식회 필사노트',
'김재우','2022년 11월 11일','9791163461661','테크빌교육',15000,
null,null,null,null,null,null,5);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'인공지능로봇엄마구출대작전','인공지능 로봇엄마 구출 대작전',
'주종민','2023년 4월 25일','9791163461715','테크빌교육',13000,
null,null,null,null,null,null,6);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'학교미래교육을디자인하다','학교, 미래교육을 디자인하다',
'김현섭','2023년 5월 15일','9791198307798','수업디자인연구소',18000,
null,null,null,null,null,null,7);

insert into booklist
values('BOOK' || TO_CHAR(BK_key_seqid.nextval),'교사교육과정을디자인하다실천편','교사 교육과정을 디자인하다-실천편',
'박수원','2022년 7월 20일','9791163461531','테크빌교육',18000,
null,null,null,null,null,null,1);

commit;

delete from booklist where bk_key = 'BOOK21';