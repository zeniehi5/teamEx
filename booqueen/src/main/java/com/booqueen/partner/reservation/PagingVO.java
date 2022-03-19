package com.booqueen.partner.reservation;

import lombok.Data;

@Data
public class PagingVO {
	
	private int currentPage; //현재 페이지
    private int listCount;   //총 게시글의 수 [ SELECT COUNT(*) FROM reservation ]
    private int pageLimit;   //한 페이지에 보여질 페이징 수 
    private int maxPage;     //총 페이지
    private int startPage;   //시작 페이지
    private int endPage;     //끝 페이지
    
    private int boardLimit;
    
    public PagingVO() {
        super();
    }
 
    public PagingVO(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage, int boardLimit) {
        super();
        this.currentPage = currentPage;
        this.listCount = listCount;
        this.pageLimit = pageLimit;
        this.maxPage = maxPage;
        this.startPage = startPage;
        this.endPage = endPage;
        this.boardLimit = boardLimit;
    }
	
}
