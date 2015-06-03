<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.all.min.js"> </script>

			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					资讯列表		
				</h1>
				<div class="widget widget-table">
						<c:if test="${result == 1 }">
							更新成功
						</c:if>
						<c:if test="${result == 0 }">
							更新失败
						</c:if>
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>资讯列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>标题</th>
										<th>咨询类型</th>
										<th>优先级</th>
										<th>正文</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									
									<c:forEach items="${newsList }" var="news" varStatus="varNews">
										<tr>
											<td>
												<c:out value="${news.title }"></c:out>
											</td>
											<td>
												<c:if test="${news.type eq '1' }">公司信息</c:if>
												<c:if test="${news.type eq '2' }">行业动态</c:if>
												<c:if test="${news.type eq '3' }">国家政策</c:if>
												<c:if test="${news.type eq '4' }">行业知识</c:if>
												<c:if test="${news.type eq '5' }">法律法规</c:if>
												<c:if test="${news.type eq '6' }">活动精彩回顾</c:if>
												<c:if test="${news.type eq '7' }">其他</c:if>
											</td>
											<td>
												<c:if test="${news.sort eq '1' }">最高</c:if>
												<c:if test="${news.sort eq '2' }">适中</c:if>
											</td>
											<td><a href="#" onclick="newContent('${news.id}')">正文</a></td>
											<td>
												<input type="button" class="btn btn-small btn-warning" onclick="deleteNews('${news.id}')" value="删除">
												<input type="button" class="btn btn-small btn-warning" onclick="newDetail(${news.id})" value="修改">
											</td>
										</tr>
									</c:forEach>
								</tbody>
						</table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<div class="modal fade" id="newsContentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      </div>
      <div class="modal-body">
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    
    function newContent(newsId){
    	$.post("newsContent.sthml",{
    		id:newsId
    	},function(data,status){
    		$("#newsContentModal .modal-body").html("咨询标题："+data.newsDetail.title+"<hr/>正文：<br/><table class=\"table table-striped table-bordered\"><tr><td>"+data.newsDetail.contents+"</td></tr></table>");
    		$('#newsContentModal').modal();
    	});
    }
    
    function deleteNews(newsId){
    	if(confirm("确认删除此咨询?") == true){
	    	$.post("deleteNews.shtml",{
	    		id:newsId
	    	},function(data,status){
	    		if(status == "success" && data.result == 1){
	    			alert("删除成功！");
	    			location.href="listNews.shtml";
	    		}else{
	    			alert("删除失败！");
	    		}
	    	});
    	}
    }
    function newDetail(newsId){
    	location.href="newsDetail.shtml?id="+newsId;
    }
</script>

<jsp:include page="common/foot.jsp"></jsp:include>					
