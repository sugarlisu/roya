<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
						用户提现管理
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>用户提现管理</h3>
					</div> <!-- /widget-header -->
					<form action="./queryAccountWithdraw.shtml" method="post" id="queryBankCard">
						<br/>
						<div align="left">
							用户登录名：
							<input type="text" name="loginName" id="loginName" value='<c:out value="${bean.loginName }" ></c:out>'/>
							<select name="withdrawStatus" id="withdrawStatus">
									<option value="" >请选择</option>
									<option value="01" <c:if test="${bean.withdrawStatus eq '01' }"> selected="selected" </c:if>>提现中</option>
									<option value="02" <c:if test="${bean.withdrawStatus eq '02' }"> selected="selected" </c:if> >操作成功</option>
									<option value="03" <c:if test="${bean.withdrawStatus eq '03' }"> selected="selected" </c:if>>操作失败</option>
							</select>
							<input type="submit" class="btn btn-small btn-warning" value="查询">
							<input type="reset"  class="btn btn-small btn-warning" value="重置">
						</div>
					</form>
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td colspan="9">
											<c:choose>
												<c:when test="${result == 1 }">
													<font color="blue">更新成功</font>
												</c:when>
												<c:when test="${result == 0 }">
													更新失败
												</c:when>
												<c:otherwise>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td width="70px">账户名 </td>
										<td>卡号</td>
										<td>银行</td>
										<td>提现金额</td>
										<td>提现状态</td>
										<td>提现时间</td>
										<td>用户登录名</td>
										<td>操作</td>
										
									</tr>
									<c:forEach varStatus="vstatus" items="${list}" var="bean">
										<tr>
											<td><c:out value="${bean.userName }" ></c:out></td>
											<td><c:out value="${bean.cardNumber }" ></c:out></td>
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
											<td><c:out value="${bean.withdrawAmount }" ></c:out></td>
											<td>
											<c:choose>
												<c:when test="${bean.withdrawStatus eq '01' }">提现中</c:when>
												<c:when test="${bean.withdrawStatus eq '02' }">操作成功</c:when>
												<c:when test="${bean.withdrawStatus eq '03' }">操作失败</c:when>
											</c:choose>
											</td>
											<td><fmt:formatDate value="${bean.createDate}" type="both"/></td>
											<td><c:out value="${bean.loginName }" ></c:out></td>
											<td class="action-td">
												<a href="./queryAccountWithdrawDetail.shtml?id=${bean.id }" class="btn btn-small btn-warning">
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
<script type="text/javascript">
<!--
$('#countDateBegin').datepicker({
});
$('#countDateEnd').datepicker({
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
