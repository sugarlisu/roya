<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
						用户银行卡管理
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>用户银行卡管理</h3>
					</div> <!-- /widget-header -->
					<form action="./queryBankCard.shtml" method="post" id="queryBankCard">
						<br/>
						<div align="left">
							用户登录名：
							<input type="text" name="loginName" id="loginName" value='<c:out value="${bean.loginName }" ></c:out>'/>
							<input type="submit" class="btn btn-small btn-warning" value="查询">
						</div>
					</form>
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td width="70px">账户名 </td>
										<td>卡号</td>
										<td>银行</td>
										<td>用户登录名</td>
										<td>创建时间</td>
										
									</tr>
									<c:forEach varStatus="vstatus" items="${list}" var="bankCard">
										<tr>
											<td><c:out value="${bankCard.userName }" ></c:out></td>
											<td><c:out value="${bankCard.cardNumber }" ></c:out></td>
											<td>
											<c:choose>
												<c:when test="${bankCard.bankType eq '001' }">中国工商银行</c:when>
												<c:when test="${bankCard.bankType eq '002' }">中国农业银行</c:when>
												<c:when test="${bankCard.bankType eq '003' }">中国建设银行</c:when>
												<c:when test="${bankCard.bankType eq '004' }">中国银行</c:when>
												<c:when test="${bankCard.bankType eq '005' }">中国招商银行</c:when>
												<c:when test="${bankCard.bankType eq '006' }">中国交通银行</c:when>
												<c:when test="${bankCard.bankType eq '007' }">支付宝</c:when>
											</c:choose>
											</td>
											<td><c:out value="${bankCard.loginName }" ></c:out></td>
											<td><fmt:formatDate value="${bankCard.createDate}" type="both"/></td>
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
