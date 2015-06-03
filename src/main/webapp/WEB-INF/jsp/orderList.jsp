<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					订单列表					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>订单列表</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>订单ID</th>
										<th>FA姓名</th>
										<th>FA手机号</th>
										<th>客户姓名</th>
										<th>产品名称</th>
										<th>订单状态</th>
										<th>订单金额</th>
										<th>成交价</th>
										<th>成交返佣额</th>
										<th>订单时间</th>
										<th>详情</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach varStatus=" vstatus" items="${orderList }" var="order">
										<tr>
											<td><c:out value="${order.orderId }" ></c:out></td>
											<td><c:out value="${order.oULoginName }" ></c:out></td>
											<td><c:out value="${order.oUMobile }" ></c:out></td>
											<td><c:out value="${order.oCName }" ></c:out></td>
											<td><c:out value="${order.oPName }" ></c:out></td>
											<td>
												<c:choose>
												<c:when test="${order.oStatus == 110 }">预约</c:when>
												<c:when test="${order.oStatus == 120 }">已付订金</c:when>
												<c:when test="${order.oStatus == 121 }">审核通过-含订金到账确认</c:when>
												<c:when test="${order.oStatus == 123 }">向PP申请合同</c:when>
												<c:when test="${order.oStatus == 124 }">收到PP合同</c:when>
												<c:when test="${order.oStatus == 130 }">预约成功</c:when>
												<c:when test="${order.oStatus == 140 }">预约失败</c:when>
												<c:when test="${order.oStatus == 210 }">合同已寄出</c:when>
												<c:when test="${order.oStatus == 220 }">签单&打款</c:when>
												<c:when test="${order.oStatus == 230 }">签单&打款</c:when>
												<c:when test="${order.oStatus == 240 }">到款</c:when>
												<c:when test="${order.oStatus == 250 }">生效</c:when>
												<c:when test="${order.oStatus == 310 }">结算</c:when>
												<c:when test="${order.oStatus == 311 }">与PP结算中</c:when>
												<c:when test="${order.oStatus == 312 }">与PP结算完成</c:when>
												<c:when test="${order.oStatus == 313 }">与FA结算中</c:when>
												<c:when test="${order.oStatus == 314 }">与FA结算完成</c:when>
												<c:when test="${order.oStatus == 320 }">返佣</c:when>
												<c:when test="${order.oStatus == 330 }">返佣确认</c:when>
												<c:when test="${order.oStatus == 340 }">评论</c:when>
												<c:when test="${order.oStatus == 999 }">订单取消</c:when>
											</c:choose>
											</td>
											<td><c:out value="${order.oAmount/10000 }"></c:out>万元 </td>
											<td><c:out value="${order.oTransactionPrice }"></c:out>%</td>
											<td><c:out value="${order.oTransactionRebate }"></c:out>元</td>
											<td><fmt:formatDate value="${order.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
											<td class="action-td">
												<a href="./queryOrderDetail.shtml?orderId=${order.orderId }" class="btn btn-small btn-warning">
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
