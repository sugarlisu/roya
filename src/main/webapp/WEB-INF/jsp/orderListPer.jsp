<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					订单状态					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>订单状态</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
						<form action="./queryOrderList.shtml" method="post" >
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>订单ID</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="orderId" value="${sessionScope.orderVo.orderId}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="orderId"/></c:if>
										</td>
									</tr>
									<tr>
										<td>订单编号</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="oCode" value="${sessionScope.orderVo.oCode}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="oCode"/></c:if>
										</td>
									</tr>
									<tr>
										<td>客户名</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="oCName" value="${sessionScope.orderVo.oCName}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="oCName"/></c:if>
										</td>
									</tr>
									<tr>
										<td>FA登陆名</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="oULoginName" value="${sessionScope.orderVo.oULoginName}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="oULoginName"/></c:if>
										</td>
									</tr>
									<tr>
										<td>FA手机号</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="oUMobile" value="${sessionScope.orderVo.oUMobile}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="oUMobile"/></c:if>
										</td>
									</tr>
									<tr>
										<td>产品名称</td>
										<td>
											<c:if test="${sessionScope.orderVo != null}"><input type="text" name="oPName" value="${sessionScope.orderVo.oPName}"/></c:if>
											<c:if test="${sessionScope.orderVo == null}"><input type="text" name="oPName"/></c:if>
										</td>
									</tr>
									<tr>
										<td class="action-td"  colspan="2" style="text-align: center;">
											<input type="submit" class="btn btn-small btn-warning" value="查询" />
										</td>
									</tr>
									
								</tbody>
						</table>
					</form>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->
<jsp:include page="common/foot.jsp"></jsp:include>					
