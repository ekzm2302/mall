package board;

import java.util.Date;

import java.util.List;

import common.PageVO;

public class BoardPageVO extends PageVO{
	private List<BoardVO> list;
	 private Date write_date;
	public List<BoardVO> getList() {
		return list;
	}
	public void setList(List<BoardVO> list) {
		this.list = list;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	//검색관련 필드
		private String search="all",keyword="";
		private String viewType ="list";
		
		public String getSearch() {
			return search;
		}

		public void setSearch(String search) {
			this.search = search;
		}

		public String getKeyword() {
			return keyword;
		}

		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}

		public String getViewType() {
			return viewType;
		}

		public void setViewType(String viewType) {
			this.viewType = viewType;
		}

		public int getPageList() {
			return pageList;
		}

		public void setPageList(int pageList) {
			this.pageList = pageList;
		}

		public int getBlockPage() {
			return blockPage;
		}

		public void setBlockPage(int blockPage) {
			this.blockPage = blockPage;
		}

		public int getTotalPage() {
			return totalPage;
		}

		public void setTotalPage(int totalPage) {
			this.totalPage = totalPage;
		}

		public int getTotalBlock() {
			return totalBlock;
		}

		public void setTotalBlock(int totalBlock) {
			this.totalBlock = totalBlock;
		}

		public int getCurPage() {
			return curPage;
		}

		public void setCurPage(int curPage) {
			this.curPage = curPage;
		}

		public int getBeginList() {
			return beginList;
		}

		public void setBeginList(int beginList) {
			this.beginList = beginList;
		}

		public int getEndList() {
			return endList;
		}

		public void setEndList(int endList) {
			this.endList = endList;
		}

		public int getCurBlock() {
			return curBlock;
		}

		public void setCurBlock(int curBlock) {
			this.curBlock = curBlock;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}

		public int getBeginPage() {
			return beginPage;
		}

		public void setBeginPage(int beginPage) {
			this.beginPage = beginPage;
		}

		public int getTotalList() {
			return totalList;
		}

		//페이지당 보여질 목록의 수
		private int pageList = 12;
		//블럭당 보여질 페이지의수 
		private int blockPage= 10;

		//총 목록 수 db에서 조회해와서 총페이지 수와 총 블록 수를 계산..
		private int totalList;
		//총 페이지 수
		private int totalPage;
		// 총 블록수
		private int totalBlock;
		
		
		//현재 페이지 번호// 초기페이지가 없으면 오류가 생기므로 1로 초기화를 시켜주었다!
		private int curPage=1;
		//각 페이지의 시작 목록 번호 현재 페이지 번호에 따라 계산
		//각 페이지 끝 목록번호
		private int beginList, endList;
		
		//현재 블록 번호 시작페이지 번호와 끝번호 페이지 계산
		private int curBlock, endPage, beginPage;

		//totalList 이외에는 모두 계산이기 때문에 메소드를 생성해보자
		public void setTotalList(int totalList) {
			this.totalList = totalList;
			// 총 목록수 들어옴.
			//총 페이지 수는 목록수 / 한페이지당 수 
			totalPage = totalList / pageList;
			// 88페이지 = 877 / 10 = 87.. 7
			
			if(totalList % pageList > 0 ) ++totalPage;
			//나머지가 있어서 총페이지 수를 하나 늘렸다.
			
			//총 블록수 8블록 88/10 = 8 ... 8
			totalBlock = totalPage/ blockPage;
			if(totalPage % blockPage>0) ++totalBlock;
			// 나머지가 있어서 블록수가 하나 늘었음.
			
			
			//각페이지의 끝 목록번호 : 총 목록수 - (페이지번호 - 1 ) * 페이지당 보여질 목록수
			endList = totalList - (curPage-1) * pageList;
			beginList = endList - (pageList-1);
			
			
			// 현재 블록 번호 : 페이지 번호 / 블록당 보여질 페이지 수
			// 각 블럭의 끝 페이지 번호 : 블록번호 * 블록당 보여질 페이지 수
			// 각 블럭의 시작 페이지 번호 : 끝 페이지 번호 - (블럭당 보여질 페이지수 - 1)
			curBlock = curPage/blockPage;
			if( curPage % blockPage >0 ) ++curBlock;
				endPage = curBlock * blockPage;
				beginPage = endPage - ( blockPage -1 );
				
			//끝 페이지 번호가 총 페이지 수보다 클 수 없으므로 총 페이지 수를 끝 페이지 번호로 한다.
				if( totalPage < endPage ) endPage = totalPage;
				
				//공지글 10건을 담아둘 곳이 필요. notice에 새로운 클래스 NoticePageVO 생성 (PageVO를 상속받은)
		}
}
