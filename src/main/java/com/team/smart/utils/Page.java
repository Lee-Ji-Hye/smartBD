package com.team.smart.utils;

public class Page {
	protected int pageLine = 5; //한페이지당 출력할 글 Row
	protected int pageBlock = 3;//한 블럭당 페이지 갯수
	protected int cnt = 0;   		//글의 총 갯수
	protected int start = 0;  	//현재페이지 시작 글번호
	protected int end = 0;    	//현재페이지 마지막 글번호
	protected String page = "";//페이지 번호
	protected int number = 0; 	//출력용 글번호 (게시글이 삭제되더라도 글번호는 끊김없이 나오도록)
	protected int pageCnt = 0;    //페이지 갯수
	protected int startPage = 0;  //시작 페이지
	protected int endPage = 0;    //마지막 페이지
	protected int currentPage = 0;
	
	protected String link = ""; //페이지 이동 url
	
	public Page() {}
	public Page(int pageLine, int pageBlock, int cnt, String link) {
		this.pageLine = pageLine;
		this.pageBlock = pageBlock;
		this.cnt = cnt;
		
		if(!link.contains("?")) {
			link = link + "?";
		}
		this.link = link;
	}
	
	public int getPageLine() {
		return pageLine;
	}
	public void setPageLine(int pageLine) {
		this.pageLine = pageLine;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	
}