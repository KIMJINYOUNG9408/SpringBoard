create table myBoard (
    bno       number            not null,
    title     varchar2(30)      not null,
    content   varchar2(2000)    not null,
    writer    varchar2(30)      not null, 
    regDate   date              default sysdate,
    viewCnt   number            default 0,
    primary key(bno)
);
create sequence myBoard_seq;

SELECT * FROM MYBOARD;


insert into myboard(bno, title, content, writer)
select myboard_seq.nextval, title, content, writer from myboard;  /* 더미용  */

create table myReply (
    bno       number            not null,
    rno       number            not null,
    content   varchar2(2000)    not null,
    writer    varchar2(30)      not null,
    regDate   date              default sysdate,
    primary key(bno, rno)
);

alter table myReply
    add constraint myReply_bno foreign key(bno)
    references myBoard(bno) ON DELETE CASCADE;

create sequence myReply_seq;


INSERT INTO myreply(bno, rno, content, writer)
	VALUES (660, myReply_seq.nextval, '더미 댓글', '더미 작성자');
	
SELECT rno, content, writer, regDate FROM myreply WHERE bno=660;

