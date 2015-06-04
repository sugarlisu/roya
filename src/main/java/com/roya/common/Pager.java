package com.roya.common;


/**
 * 分页Bean
 * @author localadmin
 *
 */
public class Pager {
	
	/**
	 * 最大分页数量 
	 */
	public static final int MAX_PAGE_SIZE = 100;
	
	/**
	 * 最小分页数量
	 */
	public static final int MIN_PAGE_SIZE = 1;
	
	/**
	 * 默认分页数量
	 */
	public static final int DEFAULT_PAGE_SIZE = 10;
	
	
	private int pageNo = 1; // 当前页码 默认为1
	private int pageSize = DEFAULT_PAGE_SIZE; //每页记录
	private int totalCount = 0; //总记录数
	private int pageCount = 0; //总页数
	private int nextPage; // 下一页页码
	private int prePage; // 上一页页码
	private boolean hasNaxtPage = false; //是否有下一页
	private boolean hasPrePage = false; //是否有上一页
	
	private int startIndex; //数据起始下标
	
	public int getPageNo() {
		if(pageNo < 1){
			pageNo = 1;
		}
/*		if(pageNo > getPageCount()){
			pageNo = getPageCount();
		}*/
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		if(pageNo < 1){
			pageNo = 1;
		}
//		if(pageNo > getPageCount()){
//			pageNo = getPageCount();
//		}
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		if(pageSize < MIN_PAGE_SIZE){
			pageSize = MIN_PAGE_SIZE;
		}
		if(pageSize > MAX_PAGE_SIZE){
			pageSize = MAX_PAGE_SIZE;
		}
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		if(pageSize < MIN_PAGE_SIZE){
			pageSize = MIN_PAGE_SIZE;
		}
		if(pageSize > MAX_PAGE_SIZE){
			pageSize = MAX_PAGE_SIZE;
		}
		
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		if(totalCount < 0){
			totalCount = 0;
		}
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		if(totalCount < 0){
			totalCount = 0;
		}
		this.totalCount = totalCount;
	}
	public int getNextPage() {
		
		if(getPageNo() < getPageCount()){
			nextPage = getPageNo() + 1;
		}
		
		return nextPage;
	}
	public int getPrePage() {
		if(getPageNo() > 1){
			nextPage = getPageNo() - 1;
		}
		return prePage;
	}
	public boolean getHasNaxtPage() {
		if(getPageNo() < getPageCount()){
			hasNaxtPage = true;
		}
		return hasNaxtPage;
	}
	public boolean getHasPrePage() {
		if(getPageNo() > 1){
			hasPrePage = true;
		}
		return hasPrePage;
	}
	public int getPageCount() {
		if(getTotalCount() < getPageSize()){
			pageCount = 1;
			return pageCount;
		}
		pageCount = getTotalCount() / getPageSize();
		if(getTotalCount() % getPageSize() > 0){
			pageCount = pageCount + 1;
		}
		return pageCount;
	}
	public int getStartIndex() {
		startIndex = (this.getPageNo()-1) * this.getPageSize();
		return startIndex;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}