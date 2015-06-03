<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					提现详情					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>提现详情</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateWithdrawStatus.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>账户名</td>
										<td><c:out value="${bean.userName }"/> </td>
									</tr>
									<tr>
										<td>卡号</td>
										<td><c:out value="${bean.cardNumber }"></c:out></td>
									</tr>
									<tr>
										<td>银行</td>
										<td>
											<c:choose>
												<c:when test="${bean.bankType eq '001' }">中国工商银行</c:when>
												<c:when test="${bean.bankType eq '002' }">中国农业银行</c:when>
												<c:when test="${bean.bankType eq '003' }">中国建设银行</c:when>
												<c:when test="${bean.bankType eq '004' }">中国银行</c:when>
												<c:when test="${bean.bankType eq '005' }">中国招商银行</c:when>
												<c:when test="${bean.bankType eq '006' }">中国交通银行</c:when>
												<c:when test="${bean.bankType eq '007' }">支付宝</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>创建时间</td>
										<td>
										<fmt:formatDate value="${bean.createDate}" type="both"/>
										</td>
									</tr>
									<tr>
										<td>到账通知</td>
										<td><c:out value="${bean.withdrawMobile }"></c:out></td>
									</tr>
									<tr>
										<td>提现金额</td>
										<td><c:out value="${bean.withdrawAmount }"></c:out>元 </td>
									</tr>
									<c:choose>
									<c:when test="${bean.withdrawStatus eq '01'  }">
										<tr>
											<td>备注</td>
											<td>
											<input type="text" name="remark" id="remark" value="${bean.remark}">
											</td>
										</tr>
									 
										<tr> 
											<td>提现状态</td>
											<td>
													<input type="hidden" name="id" value="${bean.id}">
													<select name="withdrawStatus" id="withdrawStatus">
															<option value="01" <c:if test="${bean.withdrawStatus eq '01' }"> selected="selected" </c:if>>提现中</option>
															<option value="02" <c:if test="${bean.withdrawStatus eq '02' }"> selected="selected" </c:if>>操作成功</option>
															<option value="03" <c:if test="${bean.withdrawStatus eq '03' }"> selected="selected" </c:if>>操作失败</option>
													</select>
											</td>
										</tr>
												<tr>
													<td colspan="2" style="text-align: center;">
														<input type="submit"  class="btn btn-small btn-warning"  value="提交" >
														<input type="button"  class="btn btn-small btn-warning" onclick="window.location.href='./queryAccountWithdraw.shtml'" value="返回" >
													</td>
												</tr>
										</c:when>
										<c:otherwise>  
								
								     	<tr>
											<td>备注</td>
											<td><c:out value="${bean.remark}"></c:out> </td>
										</tr>
										<tr> 
											<td>提现状态</td>
											<td>
											<c:choose>
												<c:when test="${bean.withdrawStatus eq '01' }">提现中</c:when>
												<c:when test="${bean.withdrawStatus eq '02' }">操作成功</c:when>
												<c:when test="${bean.withdrawStatus eq '03' }">操作失败</c:when>
											</c:choose>
										</td>
										</tr>
										<tr>
													<td colspan="2" style="text-align: center;">
														<input type="button"  class="btn btn-small btn-warning" onclick="window.location.href='./queryAccountWithdraw.shtml'" value="返回" >
													</td>
												</tr>
								
								   </c:otherwise>
								
								  </c:choose>
								</tbody>
								
						</table>
					</form>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
				
			</div> <!-- /span9 -->
			
<script type="text/javascript">
<!--
function CheckForm()
{
	  if(confirm("确认修改订单状态?")==true)
	    return true;
	  else
	    return false;
} 
//-->
</script>

<jsp:include page="common/foot.jsp"></jsp:include>					
