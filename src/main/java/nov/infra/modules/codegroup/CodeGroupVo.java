package nov.infra.modules.codegroup;

public class CodeGroupVo {

		private String shValue;
		private String shOption;
		private Integer shdelNY;
		private Integer shuseNY;
		private String shDateStart;
		private String shDateEnd;
		private Integer shOptionDate;
		
		private String name;
		private String seq;
		
		/*
		 * // 페이징 관련 private int thisPage = 1; //현재 페이지 private int rowNum = 10; //화면에
		 * 보여줄 데이터 줄 수 private int pageNum = 5; //화면에 보여줄 페이징 번호 수 private int
		 * totalRows; private int totalPages; private int startPage; private int
		 * endPage; private int startRnum = 1; //쿼리시작 row private int endRnum; //쿼리 끝
		 * row private Integer RNUM; private int startRnumMysql = 0;
		 */
		
		
		public String getShValue() {
			return shValue;
		}

		public void setShValue(String shValue) {
			this.shValue = shValue;
		}

		public String getShOption() {
			return shOption;
		}

		public void setShOption(String shOption) {
			this.shOption = shOption;
		}

		public Integer getShdelNY() {
			return shdelNY;
		}

		public void setShdelNY(Integer shdelNY) {
			this.shdelNY = shdelNY;
		}

		public Integer getShuseNY() {
			return shuseNY;
		}

		public void setShuseNY(Integer shuseNY) {
			this.shuseNY = shuseNY;
		}

		public String getShDateStart() {
			return shDateStart;
		}

		public void setShDateStart(String shDateStart) {
			this.shDateStart = shDateStart;
		}

		public String getShDateEnd() {
			return shDateEnd;
		}

		public void setShDateEnd(String shDateEnd) {
			this.shDateEnd = shDateEnd;
		}

		public Integer getShOptionDate() {
			return shOptionDate;
		}

		public void setShOptionDate(Integer shOptionDate) {
			this.shOptionDate = shOptionDate;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getSeq() {
			return seq;
		}

		public void setSeq(String seq) {
			this.seq = seq;
		}

		/*
		 * public int getThisPage() { return thisPage; }
		 * 
		 * public void setThisPage(int thisPage) { this.thisPage = thisPage; }
		 * 
		 * public int getRowNum() { return rowNum; }
		 * 
		 * public void setRowNum(int rowNum) { this.rowNum = rowNum; }
		 * 
		 * public int getPageNum() { return pageNum; }
		 * 
		 * public void setPageNum(int pageNum) { this.pageNum = pageNum; }
		 * 
		 * public int getTotalRows() { return totalRows; }
		 * 
		 * public void setTotalRows(int totalRows) { this.totalRows = totalRows; }
		 * 
		 * public int getTotalPages() { return totalPages; }
		 * 
		 * public void setTotalPages(int totalPages) { this.totalPages = totalPages; }
		 * 
		 * public int getStartPage() { return startPage; }
		 * 
		 * public void setStartPage(int startPage) { this.startPage = startPage; }
		 * 
		 * public int getEndPage() { return endPage; }
		 * 
		 * public void setEndPage(int endPage) { this.endPage = endPage; }
		 * 
		 * public int getStartRnum() { return startRnum; }
		 * 
		 * public void setStartRnum(int startRnum) { this.startRnum = startRnum; }
		 * 
		 * public int getEndRnum() { return endRnum; }
		 * 
		 * public void setEndRnum(int endRnum) { this.endRnum = endRnum; }
		 * 
		 * public Integer getRNUM() { return RNUM; }
		 * 
		 * public void setRNUM(Integer rNUM) { RNUM = rNUM; }
		 * 
		 * public int getStartRnumMysql() { return startRnumMysql; }
		 * 
		 * public void setStartRnumMysql(int startRnumMysql) { this.startRnumMysql =
		 * startRnumMysql; }
		 * 
		 * //페이징 계산 + 갯수별로 나누는 코드 public void setParamsPaging(int totalRowsParam) {
		 * totalRows = totalRowsParam; totalPages = totalRows / rowNum;
		 * 
		 * if (totalRows % totalRows > 0) { totalPages = totalPages + 1; } if
		 * (totalPages < thisPage) { thisPage = totalPages; } startPage = (((thisPage-1)
		 * / pageNum) * pageNum + 1); endPage = (startPage + pageNum - 1);
		 * 
		 * if (endPage > totalPages) { endPage = (totalPages); }
		 * 
		 * endRnum = ((rowNum * thisPage)); startRnum = ((endRnum - rowNum) + 1); if
		 * (startRnum < 1) startRnum = 1;
		 * 
		 * if (thisPage ==1) { startRnumMysql = 0; } else { startRnumMysql = ((rowNum *
		 * (thisPage - 1))); }
		 * 
		 * System.out.println("getThisPage():" + thisPage);
		 * System.out.println("getTotalRows():" + totalRows);
		 * System.out.println("getRowNum():" + rowNum);
		 * System.out.println("getTotalPages():" + totalPages);
		 * System.out.println("getStartPage():" + startPage);
		 * System.out.println("getEndPage():" + endPage);
		 * System.out.println("getStartRnum():" + startRnum);
		 * System.out.println("getEndRnum():" + endRnum);
		 * System.out.println("getStartRnumMysql():" + startRnumMysql); }
		 */
}
		
		
