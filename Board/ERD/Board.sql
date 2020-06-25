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
