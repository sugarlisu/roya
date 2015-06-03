<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					功能开关管理					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>功能开关列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>开关名称</th>
										<th>开关状态</th>
										<th>开关备注</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus="vstatus" items="${switchList }" var="switchs">
										<tr>
											<td><c:out value="${switchs.sKey }" ></c:out></td>
											<td>
												<c:choose>
													<c:when test="${switchs.sValue == 0 }">关</c:when>
													<c:when test="${switchs.sValue == 1 }">开</c:when>
												</c:choose>
											<td><c:out value="${switchs.sComment }" ></c:out></td>
											<td class="action-td">
												<c:if test="${switchs.sValue == 0 }">
													<form action="./updateSwitch.shtml" method="post">
														<input type="hidden" value="${switchs.id }" name="id">
														<input type="hidden" name="sValue" value="1">
														<input type="submit" value="开">
													</form>
												</c:if>
												<c:if test="${switchs.sValue == 1 }">
													<form action="./updateSwitch.shtml" method="post">
														<input type="hidden" value="${switchs.id }" name="id">
														<input type="hidden" name="sValue" value="0">
														<input type="submit" value="关">
													</form>
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

<jsp:include page="common/foot.jsp"></jsp:include>					
