<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					用户意见反馈					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>用户意见反馈</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th width="150px">时间</th>
										<th width="80px">用户手机号</th>
										<th>反馈内容</th>
										<th>读取状态</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${userFeedBackList }" var="userFeedBack">
										<tr>
											<td><fmt:formatDate value="${userFeedBack.createDate  }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
											<td>
												<c:out value="${userFeedBack.fpUserMobile }"></c:out>
											</td>
											<td>
												<c:out value="${userFeedBack.fpContents }"></c:out>
											</td>
											<td class="action-td" id="${userFeedBack.id }">
												<c:if test="${userFeedBack.status eq '01' }">
													<input type="button" class="btn btn-small btn-warning" value="未读" onclick="updateFpUserFeedBack('${userFeedBack.id}');">
												</c:if>
												<c:if test="${userFeedBack.status eq '02' }">
													已读
												</c:if>
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
<script type="text/javascript">
<!--
function updateFpUserFeedBack(param){
	$.post(
		"updateFpUserFeedBack.shtml",
		{
			id:param,
		},
		function(data,status){
			if(status === 'success' && data.result == 1){
				$("#"+param).html("已读");
			}
		}
	);
}

//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
