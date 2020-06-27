package com.board.persistence;

import java.util.List;

import com.board.domain.ReplyVO;

public interface ReplyDAO {
	
	// 댓글 조회
	public List<ReplyVO> readReply(int bno) throws Exception;

}
