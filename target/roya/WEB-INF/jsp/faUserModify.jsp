<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					FA审核					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>FA审核</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateFaUser.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
								  <tr>
										<td>用户照片</td>
										<td colspan="3"><img src='<c:out value="${faUserInfo.uImage }" />' /> </td>
									</tr>
									<tr>
										<td>用户名称</td>
										<td colspan="3"><c:out value="${faUserInfo.uName }"></c:out></td>
									</tr>
									<tr>
										<td>登录名</td>
										<td colspan="3"><c:out value="${faUserInfo.uLoginName }"></c:out></td>
									</tr>
									<tr>
										<td>性别</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${faUserInfo.uSex == 1 }">男</c:when>
												<c:when test="${faUserInfo.uSex == 2 }">女</c:when>
												<c:when test="${faUserInfo.uSex == 3 }">保密</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>年龄 </td>
										<td colspan="3">
											<c:choose>
												<c:when test="${faUserInfo.uAge == -1 }">未知</c:when>
												<c:when test="${faUserInfo.uAge != -1 }"><c:out value="${faUserInfo.uAge }"></c:out></c:when>
											</c:choose>
										</td>
									</tr>
									
									<tr>
										<td>角色</td>
										<td colspan="3"> 
											<c:choose>
													<c:when test='${faUserInfo.uRole eq "1"}'>
														未通过
													</c:when>
													<c:when test='${faUserInfo.uRole eq "2"}'>
														初级
													</c:when>
													<c:when test='${faUserInfo.uRole eq "3"}'>
														中级
													</c:when>
													<c:when test='${faUserInfo.uRole eq "4"}'>
														高级
													</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>电话号码</td>
										<td colspan="3"><c:out value="${faUserInfo.uTelephone }"></c:out> </td>
									</tr>
									<tr>
										<td>移动电话</td>
										<td colspan="3"><c:out value="${faUserInfo.uMobile }"></c:out></td>
									</tr>
									<tr>
										<td>电子邮件 </td>
										<td colspan="3"><c:out value="${faUserInfo.uEmail }"></c:out></td>
									</tr>
									<tr>
										<td>FA的业务编码</td>
										<td colspan="3"><c:out value="${faUserInfo.uCode }"></c:out></td>
									</tr>
									<tr>
										<td>住址</td>
										<td colspan="3"><c:out value="${faUserInfo.uAddress }"></c:out></td>
									</tr>
									<tr>
										<td>所在公司</td>
										<td colspan="3"><c:out value="${faUserInfo.uCompany }"></c:out></td>
									</tr>
									<tr>
										<td>个人简介</td>
										<td colspan="3"><c:out value="${faUserInfo.uRemark }"></c:out></td>
									</tr>
									<tr>
										<td>行业</td>
										<td>证件号码</td>
										<td>经验</td>
									</tr>
									<c:forEach items="${faUserAuthList }" var="faUserAuth" varStatus="vstatus">
										<tr>
											<td>
												<c:choose>
													<c:when test="${'01' eq faUserAuth.trade }">基金</c:when>
													<c:when test="${'02' eq faUserAuth.trade }">证劵</c:when>
													<c:when test="${'03' eq faUserAuth.trade }">期货</c:when>
													<c:when test="${'04' eq faUserAuth.trade }">投资</c:when>
													<c:when test="${'05' eq faUserAuth.trade }">银行</c:when>
													<c:when test="${'06' eq faUserAuth.trade }">保险</c:when>
													<c:when test="${'07' eq faUserAuth.trade }">信托</c:when>
													<c:when test="${'08' eq faUserAuth.trade }">担保</c:when>
													<c:when test="${'09' eq faUserAuth.trade }">拍卖</c:when>
													<c:when test="${'10' eq faUserAuth.trade }">典当</c:when>
													<c:when test="${'11' eq faUserAuth.trade }">其他</c:when>
												</c:choose>
											</td>
											<td>${faUserAuth.cardNo }</td>
											<td>${faUserAuth.experience }</td>
										</tr>
									</c:forEach>
									<tr>
										<td>证书类型</td>
										<td colspan="2">证书号码</td>
									</tr>
										<c:forEach items="${faUserCertList }" var="faUserCert" varStatus="favstatus">
										 <tr>
											<td >
												 <c:choose>
													<c:when test="${'01'  eq faUserCert.certType }">证劵执业资格</c:when>
													<c:when test="${'02'  eq faUserCert.certType }">基金执业资格</c:when>
													<c:when test="${'03'  eq faUserCert.certType }">期货执业资格</c:when>
													<c:when test="${'04'  eq faUserCert.certType }">黄金投资分析师职业资格</c:when>
													<c:when test="${'05'  eq faUserCert.certType }">上海金交所交易员资格</c:when>
													<c:when test="${'06'  eq faUserCert.certType }">理财规划师职业资格</c:when>
													<c:when test="${'07'  eq faUserCert.certType }">保险咨询</c:when>
													<c:when test="${'08'  eq faUserCert.certType }">港股投资咨询</c:when>
													<c:when test="${'09'  eq faUserCert.certType }">美国证券期货执业资格</c:when>
													<c:when test="${'10'  eq faUserCert.certType }">金融理财师职业资格</c:when>
													<c:when test="${'11'  eq faUserCert.certType }">特许金融分析师资格</c:when>
													<c:when test="${'12'  eq faUserCert.certType }">注册国际投资分析师资格</c:when>
												</c:choose> 
											</td>
											<td colspan="2">${faUserCert.certNo }</td>
											</tr>  
										</c:forEach>
									<tr>
										<td>审核意见</td>
										<td colspan="2">
											<textarea rows="10" cols="100" name="uAuditOpinion" required="required"  > <c:out value="${faUserInfo.uAuditOpinion }"></c:out></textarea>
										</td>
									</tr>
									<tr>
										<td>审核评级</td>
										<td colspan="3">
												<input type="hidden" value="${faUserInfo.id }" name="id">
												<input type="radio" name="uRole" value="1" <c:if test='${faUserInfo.uRole eq "1" }'> checked="checked"</c:if> >未通过
												<input type="radio" name="uRole" value="2" <c:if test='${faUserInfo.uRole eq "2" }'> checked="checked"</c:if> >初级
												<input type="radio" name="uRole" value="3" <c:if test='${faUserInfo.uRole eq "3" }'> checked="checked"</c:if> >中级
												<input type="radio" name="uRole" value="4" <c:if test='${faUserInfo.uRole eq "4" }'> checked="checked"</c:if> >高级
												<br>
												<input type="submit" value="提交审核结果">
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
<script type="text/javascript">
<!--
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
