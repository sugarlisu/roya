<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					组管理					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>组管理</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>组ID</th>
										<th>组名称</th>
										<th>组备注</th>
										<th>查看详情</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus=" vstatus" items="${allGroup }" var="group">
										<tr>
											<td><c:out value="${group.groupId }" ></c:out></td>
											<td><c:out value="${group.groupName }" ></c:out></td>
											<td><c:out value="${group.groupRemark }" ></c:out></td>
											<td class="action-td">
												<a href="./queryGroupInfo.shtml?groupId=${group.groupId }" class="btn btn-small btn-warning">
													详情							
												</a>					
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

<jsp:include page="common/foot.jsp"></jsp:include>					
