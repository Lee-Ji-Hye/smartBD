package com.team.smart.utils;

public class Paging extends Page {
	public Paging() {}
	public Paging(int pageLine, int pageBlock, int cnt, String link) {
		super.pageLine = pageLine;
		super.pageBlock = pageBlock;
		super.cnt = cnt;
		
		if(!link.contains("?")) {
			link = link + "?";
		}
		super.link = link;
	}
	
	public void pagelist(String page) {
		
		//페이징 처리
		if(page == null || page == "") {
			page = "1";
		}
		
		currentPage = Integer.parseInt(page); //현재 페이지
		//pageCnt = (this.cnt / pageCnt) + ((this.cnt % pageCnt > 0)? 1 : 0); //총 페이지 수 구하기(페이지 갯수 +1 or 0)
//		if(pageCnt > 0) {
//			pageCnt = (this.cnt / pageCnt) + ((this.cnt % pageCnt > 0)? 1 : 0);
//		}
		pageCnt = (cnt / pageLine) + ((cnt % pageLine > 0)? 1 : 0);
		//현재페이지 시작 글번호
		start = (currentPage -1) * pageLine + 1;
		
		//현재페이지 마지막 글번호
		end = start + pageLine -1;
		
		System.out.println("startNo:" + start + " / endNo:" + end);
		
		if(end > cnt) {
			end = cnt;
		}
		
		//출력용 글번호
		//중간에글이 삭제되더라도 게시글 번호는 순서대로 되도록 
		number = cnt - (currentPage -1) * pageLine;
		
		//시작페이지
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) {
			startPage -= pageBlock;
		}
		
		//마지막페이지
		endPage = startPage + pageBlock -1; // 3
		if(endPage > pageCnt) {
			endPage = pageCnt;
		}
	}
	
	//페이징 html
	public String html_mk_page() {
		String url = "";
		String html_page = 
			"<div class='pagingDivCenter01'>"+	
				"<div class='pagingDivCenter02'>"+
				"<nav id='datatablePagination' aria-label='Activity pagination'style=''>"+
				"<div class='dataTables_paginate paging_simple_numbers pagination mb-0'"+
					 "id='DataTables_Table_0_paginate'>";
					
				//게시글 있으면
				if(cnt > 0) {
					// 처음[◀◀] / 이전블록 [◀]
					if(startPage > pageBlock) {
						url = this.link + "&page="+(startPage - pageBlock);
						html_page += "<span class='page-item'>"+
										"<a class='paginate_button previous disabled page-link'"+
										"   href='" + url + "'" +
										"	aria-controls='DataTables_Table_0' data-dt-idx='0' tabindex='0'"+
										"	id='DataTables_Table_0_previous'><span aria-hidden='true'>«</span></a></span>";
					}
				}
				
				html_page += "<span style='display: flex;'>";
				
				//블록내의 페이지 번호
				for(int i=startPage; i <= endPage; i++ ) {
					
					if(i == currentPage) {
						 //" <span style='font-size:15px;color:#ff3c00;'><b>["+i+"]</b></span>";
						 html_page += "	<span class='page-item active'>"+
									  "		<a class='paginate_button current page-link' aria-controls='DataTables_Table_0' data-dt-idx='"+i+"' tabindex='0'>"+i+"</a>"+
									  "	</span>";
					}
					
					if(i != currentPage) {
						url = this.link + "&page="+i;
						//html_page += "<span style='font-size:15px;color:black;font-weight:500;'><a href='"+url+"'> ["+i+"]</a></span>";
						html_page += "	<span class='page-item'>"+
									 "		<a href='"+url+"' class='paginate_button page-link' aria-controls='DataTables_Table_0' data-dt-idx='"+i+"' tabindex='0'>"+i+"</a>"+
									 "	</span>";
					}
				}
						
						
					html_page += "</span>";
						
					 //다음블록 [▶] / 끝 [▶▶] 
			        if(pageCnt > endPage) {
			        	//html_page += "<a href=\'"+this.link+"&page="+(startPage +  pageBlock)+"'>[▶]</a>";
			        	//html_page += "<a href=\'"+this.link+"&page="+pageCnt+"\'>[▶▶]</a>";
			        	html_page += "<span class='page-item'>"+
			        				 "	<a href='"+this.link+"&page="+(startPage +  pageBlock)+"' "+
			        				 "     class='paginate_button next page-link'"+ 
			        				 "	   aria-controls='DataTables_Table_0'"+ 
			        				 "	   data-dt-idx='5'"+ 
			        				 "	   tabindex='0'"+
			        				 "		id='DataTables_Table_0_next'>"+
			        				 "		<span aria-hidden='true'>»</span>"+
			        				 "	</a>"+
			        				 "</span>";
			        }		
						
			html_page += "</div>"+
						"</nav> "+
					"</div>"+
				"</div>";
			
			return html_page;
	}
	
}