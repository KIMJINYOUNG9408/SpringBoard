package com.board.persistence;

import com.board.domain.BoardVO;

public interface BoardDAO {
 
 // 작성
 public void write(BoardVO vo) throws Exception;
 
 // 조회
 public BoardVO read(int bno) throws Exception;
 
 // 수정
 public void update(BoardVO vo) throws Exception;
 
 public void delete(int bno) throws Exception;
 
}