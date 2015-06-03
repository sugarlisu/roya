<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					订单详情					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>订单详情</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateOrderStatus.shtml">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>订单ID</td>
										<td><c:out value="${orderDetail.orderId }"/> </td>
									</tr>
									<tr>
										<td>FA姓名</td>
										<td><c:out value="${orderDetail.oULoginName }"></c:out></td>
									</tr>
									<tr>
										<td>FA电话号码</td>
										<td><c:out value="${orderDetail.oUTelephone }"></c:out></td>
									</tr>
									<tr>
										<td>FA手机号</td>
										<td><c:out value="${orderDetail.oUMobile }"></c:out></td>
									</tr>
									<tr>
										<td>客户姓名</td>
										<td><c:out value="${orderDetail.oCName }"></c:out></td>
									</tr>
									<tr>
										<td>产品名称</td>
										<td><c:out value="${orderDetail.oPName }"></c:out> </td>
									</tr>
									<tr>
										<td>订单金额</td>
										<td><c:out value="${orderDetail.oAmount/10000 }"></c:out>万元 </td>
									</tr>
									<tr>
										<td>订单时间</td>
										<td><fmt:formatDate value="${orderDetail.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
									</tr>
									
									<tr>
										<td>订单更新时间</td>
										<td><fmt:formatDate value="${orderDetail.updateDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td> 
									</tr>
									<tr>
										<td> 订单状态 </td>
										<td>
											<c:choose>
												<c:when test="${orderDetail.oStatus == 110 }">预约</c:when>
												<c:when test="${orderDetail.oStatus == 120 }">已付订金</c:when>
												<c:when test="${orderDetail.oStatus == 121 }">审核通过-含订金到账确认</c:when>
												<c:when test="${orderDetail.oStatus == 123 }">向PP申请合同</c:when>
												<c:when test="${orderDetail.oStatus == 124 }">收到PP合同</c:when>
												<c:when test="${orderDetail.oStatus == 130 }">预约成功</c:when>
												<c:when test="${orderDetail.oStatus == 140 }">预约失败</c:when>
												<c:when test="${orderDetail.oStatus == 210 }">合同已寄出</c:when>
												<c:when test="${orderDetail.oStatus == 220 }">签单&打款</c:when>
												<c:when test="${orderDetail.oStatus == 230 }">签单&打款</c:when>
												<c:when test="${orderDetail.oStatus == 240 }">到款</c:when>
												<c:when test="${orderDetail.oStatus == 250 }">生效</c:when>
												<c:when test="${orderDetail.oStatus == 310 }">结算</c:when>
												<c:when test="${orderDetail.oStatus == 311 }">与PP结算中</c:when>
												<c:when test="${orderDetail.oStatus == 312 }">与PP结算完成</c:when>
												<c:when test="${orderDetail.oStatus == 313 }">与FA结算中</c:when>
												<c:when test="${orderDetail.oStatus == 314 }">与FA结算完成</c:when>
												<c:when test="${orderDetail.oStatus == 320 }">返佣</c:when>
												<c:when test="${orderDetail.oStatus == 330 }">返佣确认</c:when>
												<c:when test="${orderDetail.oStatus == 340 }">评论</c:when>
												<c:when test="${orderDetail.oStatus == 999 }">订单取消</c:when>
											</c:choose>
										</td>
									</tr>
									
									<tr>
										<td>备注</td>
										<td><c:out value="${orderDetail.oRemark }"></c:out></td>
									</tr>
									
									<tr>
										<td>返佣率</td>
										<td>
											<c:if test="${orderDetail.oRebateRate < 0 }">固定值</c:if>
											<c:if test="${orderDetail.oRebateRate >= 0 }">
												<c:out value="${orderDetail.oRebateRate }"></c:out>%
											</c:if>
											
										</td>
									</tr>
									<tr>
										<td>返佣金额</td>
										<td><c:out value="${orderDetail.oRebateAmount }"></c:out>元</td>
									</tr>
									<tr>
									<td>核心价</td>
										<td>
												<c:out value="${orderDetail.oCorePrice }"></c:out>%
											
										</td>
									</tr>
									<tr>
										<td>核心返佣额</td>
										<td><c:out value="${orderDetail.oCoreRebate }"></c:out>元</td>
									</tr>
									<tr>
									<td>成本价</td>
										<td>
												<c:out value="${orderDetail.oCostPrice }"></c:out>%
										</td>
									</tr>
									<tr>
										<td>成本返佣额</td>
										<td><c:out value="${orderDetail.oCostRebate }"></c:out>元</td>
									</tr>
									<tr>
									<td>销售价</td>
										<td>
											<c:out value="${orderDetail.oSellingPrice }"></c:out>%
										</td>
									</tr>
									<tr>
										<td>销售返佣额</td>
										<td><c:out value="${orderDetail.oSellingRebate }"></c:out>元</td>
									</tr>
									<!-- <tr>
										<td> 合同列表</td>
										<td>
											<c:forEach items="${orderDetail.orderContractList }" var="contract" varStatus="vstatus">
												<img alt="" src='<c:out value = "${contract.cImageUrl }"> </c:out>' >
											</c:forEach>
										</td>
									</tr> -->
									<c:if test="${orderDetail.oStatus == 314 }">
										<tr>
										<td>成交价</td>
											<td>
											<input min="0" maxlength="20" style="width: 80px" oninvalid="this.setCustomValidity('请输入数字,保留两位小数');" required="required" type="text" name="oTransactionPrice" id="oTransactionPrice"  onMouseOut ="countTransactionRebate(this.value)" onBlur="countTransactionRebate(this.value)">
												%
											</td>
										</tr>
										<tr>
											<td>成交返佣额</td>
											<td><input type="text" name="oTransactionRebate" id="oTransactionRebate" readonly="readonly">元</td>
										</tr>
									</c:if>
									<c:if test="${orderDetail.oStatus != 314 }">
										<tr>
										<td>成交价</td>
											<td><c:out value="${orderDetail.oTransactionPrice }"></c:out>%</td>
										</tr>
										<tr>
										<td>成交返佣额</td>
											<td><c:out value="${orderDetail.oTransactionRebate }"></c:out>元</td>
										</tr>
									</c:if>
									 <c:if test="${orderDetail.oStatus <= 320  }">
										<tr>
											<td>状态更新</td>
											<td>
													<input type="hidden" name="id" value="${orderDetail.orderId }">
													<select name="oStatus" id="ostatus">
														<c:if test="${orderDetail.oStatus == 120 or orderDetail.oStatus == 110}">
															<option value="121">审核通过-含订金到账确认	</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 121}">
															<option value="123">向PP申请合同</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 123 }">
															<option value="124">收到PP合同	</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 124 }">
															<option value="130">预约成功</option>
														</c:if>
														<c:if test="${orderDetail.oStatus < 130 }">
															<option value="140">预约失败</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 130 }">
															<option value="210">合同已寄出</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 220 }">
															<option value="240">到款</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 230 }">
															<option value="240">到款</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 250 }">
															<option value="310">结算</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 310 }">
															<option value="311">与PP结算中</option>	
														</c:if>
														<c:if test="${orderDetail.oStatus == 311 }">
															<option value="312">与PP结算完成</option>	
														</c:if>
														<c:if test="${orderDetail.oStatus == 312 }">
															<option value="313">与FA结算中</option>	
														</c:if>
														<c:if test="${orderDetail.oStatus == 313 }">
															<option value="314">与FA结算完成</option>
														</c:if>
														<c:if test="${orderDetail.oStatus == 314 }">
															<option value="320">返佣</option>		
														</c:if>	
														<c:if test="${orderDetail.oStatus < 250 }">
															<option value="999">订单取消</option>		
														</c:if>
													</select>
											</td>
										</tr>
											<c:if test="${orderDetail.oStatus < 320 }">
												<tr>
													<td colspan="2" style="text-align: center;">
														<input type="submit"  class="btn btn-small btn-warning" onclick="return CheckForm()" value="提交" >
													</td>
												</tr>
											</c:if>
										</c:if>
								</tbody>
						</table>
					</form>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->

<script type="text/javascript">

function countTransactionRebate(value)
{
	var count= ${orderDetail.oAmount}*0.01*value;
	document.getElementById("oTransactionRebate").value=count;

} 

</script>

<jsp:include page="common/foot.jsp"></jsp:include>					
