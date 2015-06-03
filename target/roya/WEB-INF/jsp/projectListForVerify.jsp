<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品审核					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品审核</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>产品代码</th>
										<th>产品名称</th>
										<th>产品类型</th>
										<!-- <th>产品开放频率</th> -->
										<th>期限</th>
										<!-- <th>简介</th> -->
										<th>发布状态</th>
										<th>审核状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${projectList }" var="project">
										<tr>
											<td><c:out value="${project.pCode }" ></c:out></td>
											<td><a href="./queryProjectForVerify.shtml?id=${project.id }"><c:out value="${project.pName }" ></c:out></a></td>
											<td>
												<c:if test="${project.pType eq '01' }">
													基金
												</c:if>
												<c:if test="${project.pType eq '02' }">
													信托
												</c:if>
												<c:if test="${project.pType eq '03' }">
													资管计划
												</c:if>
												<c:if test="${project.pType eq '04' }">
													有限合伙
												</c:if>
												<c:if test="${project.pType eq '05' }">
													其他
												</c:if>
											</td>
											<!-- <td><c:out value="${project.pFrequencyOpen }" ></c:out></td> -->
											<td><c:out value="${project.pDueTime }" ></c:out>月</td>
											<!-- <td><c:out value="${project.pSummary }" ></c:out></td> -->
											<td>
												<c:choose>
													<c:when test="${project.pPublicStatus eq '1' }">未发布</c:when>
													<c:when test="${project.pPublicStatus eq '2' }">已发布</c:when>
													<c:when test="${project.pPublicStatus eq '3' }">已下架</c:when>
												</c:choose>
											</td>
												<td>
													<c:choose>
														<c:when test="${project.status eq '1' }">未审核</c:when>
														<c:when test="${project.status eq '2' }">已审核</c:when>
														<c:when test="${project.status eq '3' }">已审核</c:when>
													</c:choose>
												</td>
											<td class="action-td" >
												<input type="button" class="btn btn-small btn-warning" onclick="deleteProject('./deleteProject.shtml?id=${project.id }',this)" value="删除">
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
	function deleteProject(param,ids){
	
		if(confirm("确认删除此产品？") == true){
			$.getJSON(param,function(data,status){
				if(status === 'success' && data.result == 1){
					alert("删除成功！");
					$(ids).parent().parent().remove();
				}else{
					alert("删除失败");
				}
			});
		}
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
