<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.all.min.js"> </script>
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品发布					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品发布</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>产品代码</td>
										<td colspan="3"><c:out value="${project.pCode }"/> </td>
									</tr>
									<tr>
										<td> 产品名称</td>
										<td colspan="3"><c:out value="${project.pName }"></c:out></td>
									</tr>
									<tr>
										<td>产品全名</td>
										<td colspan="3"><c:out value="${project.pFullName }"></c:out></td>
									</tr>
									<tr>
										<td>产品类型</td>
										<td colspan="3">
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
									</tr>
									<!-- <tr>
										<td>产品等级</td>
										<td colspan="3">
											<c:if test="${project.pLevel eq '01' }">
												AAA
											</c:if>
											<c:if test="${project.pLevel eq '02' }">
												AA
											</c:if>
											<c:if test="${project.pLevel eq '03' }">
												A
											</c:if>
											<c:if test="${project.pLevel eq '04' }">
												BBB
											</c:if>
											<c:if test="${project.pLevel eq '05' }">
												BB
											</c:if>
											<c:if test="${project.pLevel eq '06' }">
												B
											</c:if>
											<c:if test="${project.pLevel eq '07' }">
												CCC
											</c:if>
											<c:if test="${project.pLevel eq '08' }">
												CC
											</c:if>
											<c:if test="${project.pLevel eq '09' }">
												C
											</c:if>
											<c:if test="${project.pLevel eq '10' }">
												D
											</c:if>
										</td>
									</tr> -->
									<tr >
										<td>发行地区</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pPublicArea eq '00' }">全国</c:when>
												<c:when test="${project.pPublicArea eq '01' }">江浙沪</c:when>
												<c:when test="${project.pPublicArea eq '02' }">京津冀</c:when>
												<c:when test="${project.pPublicArea eq '03' }">珠三角</c:when>
												<c:when test="${project.pPublicArea eq '04' }">其他地区</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td> 发行规模 </td>
										<td colspan="3"> 
											<c:choose>
												<c:when test="${project.pIssuingScale/100000000 >= 1 }">
													<c:out value="${project.pIssuingScale/100000000 }"></c:out>亿元
												</c:when>
												<c:when test="${project.pIssuingScale/10000 >= 1 }">
													<c:out value="${project.pIssuingScale/10000 }"></c:out>万元
												</c:when>
												<c:when test="${project.pIssuingScale >= 0 }">
													<c:out value="${project.pIssuingScale }"></c:out>元
												</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>起购金额</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pMinimumAmount/100000000 >= 1 }">
													<c:out value="${project.pMinimumAmount/100000000 }"></c:out>亿元
												</c:when>
												<c:when test="${project.pMinimumAmount/10000 >= 1 }">
													<c:out value="${project.pMinimumAmount/10000 }"></c:out>万元
												</c:when>
												<c:when test="${project.pMinimumAmount >= 0 }">
													<c:out value="${project.pMinimumAmount }"></c:out>元
												</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>产品期限</td>
										<td colspan="3"><c:out value="${project.pDueTime }"></c:out>月</td>
									</tr>
									<tr>
										<td>融资方介绍</td>
										<td>
											<c:out value="${project.pAboutFinancingParty }" escapeXml="false"></c:out>
										</td>
									</tr>
									<tr>
										<td>担保方介绍</td>
										<td>
											<c:out value="${project.pAboutGuarantor }" escapeXml="false"></c:out>
										</td>
									</tr>
									<!-- <tr>
										<td>“一句话”概述</td>
										<td colspan="3"><c:out value="${project.pProductSummary }"></c:out></td>
									</tr> -->
									<tr>
										<td>收益类型</td>
										<td colspan="3">
											<c:if test="${project.pProfitType eq '01' }">固定</c:if>
											<c:if test="${project.pProfitType eq '02' }">浮动</c:if>
										</td>
									</tr>
									<tr>
										<td>预期销售金额</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pExpectSubscriptionAmount/100000000 >= 1 }">
													<c:out value="${project.pExpectSubscriptionAmount/100000000 }"></c:out>亿元
												</c:when>
												<c:when test="${project.pExpectSubscriptionAmount/10000 >= 1 }">
													<c:out value="${project.pExpectSubscriptionAmount/10000 }"></c:out>万元
												</c:when>
												<c:when test="${project.pExpectSubscriptionAmount >= 0 }">
													<c:out value="${project.pExpectSubscriptionAmount }"></c:out>元
												</c:when>
											</c:choose>
										</td>
									</tr>
										<!-- <tr>
										<td>预期销售分额</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pExpectSubscriptionShare/100000000 >= 1 }">
													<c:out value="${project.pExpectSubscriptionShare/100000000 }"></c:out>亿份
												</c:when>
												<c:when test="${project.pExpectSubscriptionShare/10000 >= 1 }">
													<c:out value="${project.pExpectSubscriptionShare/10000 }"></c:out>万份
												</c:when>
												<c:when test="${project.pExpectSubscriptionShare >= 0 }">
													<c:out value="${project.pExpectSubscriptionShare }"></c:out>份
												</c:when>
											</c:choose>
										</td>
									</tr> -->
									<tr>
										<td>实际销售金额</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pRealSubscriptionAmount/100000000 >= 1 }">
													<c:out value="${project.pRealSubscriptionAmount/100000000 }"></c:out>亿元
												</c:when>
												<c:when test="${project.pRealSubscriptionAmount/10000 >= 1 }">
													<c:out value="${project.pRealSubscriptionAmount/10000 }"></c:out>万元
												</c:when>
												<c:when test="${project.pRealSubscriptionAmount >= 0 }">
													<c:out value="${project.pRealSubscriptionAmount }"></c:out>元
												</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>实际销售份额</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pRealSubscriptionShare/100000000 >= 1 }">
													<c:out value="${project.pRealSubscriptionShare/100000000 }"></c:out>亿份
												</c:when>
												<c:when test="${project.pRealSubscriptionShare/10000 >= 1 }">
													<c:out value="${project.pRealSubscriptionShare/10000 }"></c:out>万份
												</c:when>
												<c:when test="${project.pRealSubscriptionShare>= 0 }">
													<c:out value="${project.pRealSubscriptionShare }"></c:out>份
												</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>投资方向</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pInvestType eq '01' }">房地产类</c:when>
												<c:when test="${project.pInvestType eq '02' }">金融市场</c:when>
												<c:when test="${project.pInvestType eq '03' }">基础设施</c:when>
												<c:when test="${project.pInvestType eq '04' }">其他</c:when>
												<c:when test="${project.pInvestType eq '05' }">城投债</c:when>
												<c:when test="${project.pInvestType eq '06' }">工商企业</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>项目所属</td>
										<td colspan="3">
											<c:out value="${project.pProjectOwner }"></c:out>
										</td>
									</tr>
									<tr>
										<td>发行机构</td>
										<td colspan="3">
											<c:out value="${project.pInvestOwner }"></c:out>
										</td>
									</tr>
									
									<tr>
										<td>正式开始销售的日期</td>
										<td colspan="3">
											<fmt:formatDate value="${project.pSaleTimeStart }" pattern="yyyy年MM月dd日    HH时mm分ss秒"/>
										</td>
									</tr>
									<tr>
										<td>正式结束销售的日期</td>
										<td colspan="3">
											<fmt:formatDate value="${project.pSaleTimeEnd }" pattern="yyyy年MM月dd日    HH时mm分ss秒"/>
										</td>
									</tr>
									<!-- <tr>
										<td> 产品开放频率 </td>
										<td colspan="3"><c:out value="${project.pFrequencyOpen }"></c:out></td>
									</tr> -->
									<tr>
										<td> 销售状态</td>
											<c:choose>
												<c:when test="${project.pSaleStatus eq '01' }">
													<td colspan="3">
													 	未开始 
													 </td>
													 <!-- <td colspan="2">
													 	<form action="">
													 		<input type="hidden" value="${project.id }" name="id">
															<input >
															<input type="submit " value="修改销售状态">
													 	</form>
													 </td> -->
												 </c:when>
												<c:when test="${project.pSaleStatus eq '02' }"><td colspan="3">预售中</td></c:when>
												<c:when test="${project.pSaleStatus eq '03' }"><td colspan="3">募集中</td></c:when>
												<c:when test="${project.pSaleStatus eq '04' }"><td colspan="3">已售罄</td></c:when>
												<c:when test="${project.pSaleStatus eq '05' }"><td colspan="3">募集结束</td></c:when>
											</c:choose>
									</tr>
									<!-- <tr>
										<td>起息说明</td>
										<td colspan="3"><c:out value="${project.pInstructionsWork }"></c:out></td>
									</tr> -->
									<tr>
										<td> 付息方式</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pPaymentInterestType eq '01' }">按月付息</c:when>
												<c:when test="${project.pPaymentInterestType eq '02' }">按季付息</c:when>
												<c:when test="${project.pPaymentInterestType eq '03' }">按半年付息</c:when>
												<c:when test="${project.pPaymentInterestType eq '04' }">按年付息</c:when>
												<c:when test="${project.pPaymentInterestType eq '05' }">到期还本付息</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>产品简介</td>
										<td colspan="3"><c:out value="${project.pSummary }" escapeXml="false"></c:out></td>
									</tr>
									<tr>
										<td>项目期限是否提前结束</td>
										<td colspan="3">
											<c:if test="${project.pEndEarlyIdentification eq '0' }">否</c:if>
											<c:if test="${project.pEndEarlyIdentification eq '1' }">是</c:if>
										</td>
									</tr>
									
									<tr>
										<td>累进追加金额的最小单位</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pProgressiveAmount/100000000 >= 1 }">
													<c:out value="${project.pProgressiveAmount/100000000 }"></c:out>亿元
												</c:when>
												<c:when test="${project.pProgressiveAmount/10000 >= 1 }">
													<c:out value="${project.pProgressiveAmount/10000 }"></c:out>万元
												</c:when>
												<c:when test="${project.pProgressiveAmount >= 0 }">
													<c:out value="${project.pProgressiveAmount }"></c:out>元
												</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>发布状态</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.pPublicStatus eq '1' }">未发布</c:when>
												<c:when test="${project.pPublicStatus eq '2' }">已发布</c:when>
												<c:when test="${project.pPublicStatus eq '3' }">已下架</c:when>
											</c:choose>
										</td>
									</tr>
									<tr>
										<td>发布中间状态</td>
										<td colspan="3">
											<c:choose>
												<c:when test="${project.status eq '1' }">未发布</c:when>
												<c:when test="${project.status eq '2' }">已审核</c:when>
												<c:when test="${project.status eq '3' }">已审核</c:when>
											</c:choose>
										</td>
									</tr>
									<c:if test="${! empty projectCorpList}">
									<tr>
										<td colspan="4">
											产品所属机构信息
											<table>
												<c:forEach items="${projectCorpList }" var="projectCorp" varStatus="varProjectCorp">
													<tr>
														<td>机构名称:${projectCorp.uCompany }</td>
													</tr>
												</c:forEach>
											</table>
										</td>
									</tr>
									</c:if>
									<c:if test="${empty projectCorpList}">
										<tr>
											<td colspan="4">产品所属机构信息:平台产品</td>
										</tr>
									</c:if>
									<tr>
										<td>预期年化收益</td>
										<td>购买金额范围</td>
										<td>返佣类型</td>
										<td>返佣率</td>
									</tr>
									<c:forEach items="${projectAnnualRevenueList }" var="projectAnnualRevenue" varStatus="vstatus">
										<tr>
											<td>${projectAnnualRevenue.pAnnualRevenueExpect } %</td>
											<td>
												<c:choose>
													<c:when test="${projectAnnualRevenue.pStartAmount/100000000 >= 1 }">
														<c:out value="${projectAnnualRevenue.pStartAmount/100000000 }"></c:out>亿元
													</c:when>
													<c:when test="${projectAnnualRevenue.pStartAmount/10000 >= 1 }">
														<c:out value="${projectAnnualRevenue.pStartAmount/10000 }"></c:out>万元
													</c:when>
													<c:when test="${projectAnnualRevenue.pStartAmount >= 0 }">
														<c:out value="${projectAnnualRevenue.pStartAmount }"></c:out>元
													</c:when>
												</c:choose>
												-
												<c:choose>
													<c:when test="${projectAnnualRevenue.pEndAmount/100000000 >= 1 }">
														<c:out value="${projectAnnualRevenue.pEndAmount/100000000 }"></c:out>亿元
													</c:when>
													<c:when test="${projectAnnualRevenue.pEndAmount/10000 >= 1 }">
														<c:out value="${projectAnnualRevenue.pEndAmount/10000 }"></c:out>万元
													</c:when>
													<c:when test="${projectAnnualRevenue.pEndAmount >= 0 }">
														<c:out value="${projectAnnualRevenue.pEndAmount }"></c:out>元
													</c:when>
												</c:choose>
											</td>
											
											<c:forEach items="${projectRabateList }" var="projectRabate" varStatus="vstatus">
												<c:if test="${projectAnnualRevenue.id == projectRabate.arId}">
													<td> 
														<c:choose>
															<c:when test="${projectRabate.pRabateType eq '01'}">
																百分比
															</c:when>
															<c:when test="${projectRabate.pRabateType eq '02'}">
																固定值
															</c:when>
														</c:choose>
													</td>
													<c:if test="${projectRabate.pRabateType eq '01'}">
														<td>${projectRabate.pRabateProfit } %</td>
													</c:if>
													<c:if test="${projectRabate.pRabateType eq '02'}">
														<td>${projectRabate.pRabateProfit } 元</td>
													</c:if>
												</c:if>
											</c:forEach>
											
										</tr>
									</c:forEach>
									<tr>
										<td >风险等级</td>
										<td colspan="3">风险控制说明</td>
									</tr>
									<c:forEach items="${projectRiskList }" var="projectRisk" varStatus="vstatus">
										<tr>
											<td >
												<c:choose>
													<c:when test="${projectRisk.pRiskRank eq '01'}">
														保守型
													</c:when>
													<c:when test="${projectRisk.pRiskRank eq '02'}">
														稳健型
													</c:when>
													<c:when test="${projectRisk.pRiskRank eq '03'}">
														积极型
													</c:when>
												</c:choose>
											</td>
											<td colspan="3">
												<c:out value="${projectRisk.pRiskRankComtent }" escapeXml="false"></c:out>
											</td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="4">
											<table class="table table-striped table-bordered">
												<tbody>
													<tr>
														<td>账号名称</td>
														<td>卡号</td>
														<td>开户行</td>
													</tr>
													<c:forEach items="${projectAccountList }" var="projectAccount" varStatus="varProjectAccount">
														<tr>
															<td><c:out value="${projectAccount.pRaiseAccountName }"></c:out></td>
															<td><c:out value="${projectAccount.pRaiseAccountNo }"></c:out></td>
															<td><c:out value="${projectAccount.pRaiseAccountOpenAddr }"></c:out></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</td>
									</tr>
									
								<!-- 	<tr>
										<td>点评类型</td>
										<td colspan="3">点评内容</td>
									</tr>
									<c:forEach items="${projectCommentsList }" var="projectComment" varStatus="vstatus">
										<tr>
											<td>
												<c:choose>
													<c:when test="${projectComment.pCommentsType eq '01'}">
														平台点评
													</c:when>
												</c:choose>
											</td>
											<td  colspan="3">
												<c:out value="${projectComment.pCommentsContent }"></c:out>
											</td>
										</tr>
									</c:forEach> -->
									
									<c:if test='${project.status eq "2" }'>
									<tr>
										<td>发布操作</td>
										<td align="center" colspan="3">
											<form action="./updateProjectForPublish.shtml" method="post">
												<input type="hidden" value="${project.id }" name="id">
												<input type="hidden" name="pPublicStatus" value="2">
												<input type="hidden" name="status" value="3">
												<br>
												<input type="submit" class="btn btn-small btn-warning" value="发布" >
											</form>
											<form action="./updateProjectForPublish.shtml" method="post">
												<input type="hidden" value="${project.id }" name="id">
												<input type="hidden" name="pPublicStatus" value="4">
												<input type="hidden" name="status" value="1">
												<br>
												<input type="submit" class="btn btn-small btn-warning" value="拒绝发布">
											</form>
										</td>
									</tr>
									</c:if>
										<c:if test="${project.pPublicStatus eq '2' }">
									<tr>
										<form action="./productSet.shtml" method="post" id="productSet">
											<c:if test="${  empty project.pEstablishmentTime }">
													<td colspan="2" style="text-align: center;">
														产品成立时间 : 
														<input type="hidden" value="${project.id }" name="id">
														<input type="datetime" name="pEstablishmentTimeStr" required="required" id="pEstablishmentTimeStr">
													</td>
													<td colspan="2" style="text-align: center;">
														<input type="submit" class="btn btn-small btn-warning" value="产品成立">
													</td>
												</c:if>
											</form>
										</tr>
										<tr>
											<td colspan="4" style="text-align: center;">
												<form action="./updateProjectForPublish.shtml" method="post" >
													<input type="hidden" value="${project.id }" name="id">
													<input type="hidden" name="pPublicStatus" value="3">
													<input type="hidden" name="status" value="3">
													<input type="submit" class="btn btn-small btn-warning" value="下架" >
												</form>
											</td>
										</tr>
										</c:if>
										<tr>
										<td colspan="4">
											<form action="projectAllSubscription.shtml" method="post" id="projectAllSubscription">
												<table  class="table table-striped table-bordered">
													<tr>
														<td>产品已经销售总额</td>
														<td id="pAllSubscriptionAmount" >
															<input type="hidden" value="${project.id }" name="id">
															<c:choose>
																	<c:when test="${project.pAllSubscriptionAmount/100000000 >= 1 }">
																		<c:out value="${project.pAllSubscriptionAmount/100000000 }"></c:out>亿元
																	</c:when>
																	<c:when test="${project.pAllSubscriptionAmount/10000 >= 1 }">
																		<c:out value="${project.pAllSubscriptionAmount/10000 }"></c:out>万元
																	</c:when>
																	<c:when test="${project.pAllSubscriptionAmount >= 0 }">
																		<c:out value="${project.pAllSubscriptionAmount }"></c:out>元
																	</c:when>
																	<c:otherwise>
																		无人购买
																	</c:otherwise>
															</c:choose>
														</td>
														<td colspan="2">
															更新：<input type="number" required="required" name="pAllSubscriptionAmount">万元
														</td>
													</tr>
													<tr>
														<td>产品购买总人数</td>
														<td id="pAllSubscriptionNum" >
															<c:choose>
																<c:when test="${project.pAllSubscriptionNum >0 }">
																	<c:out value="${project.pAllSubscriptionNum}"></c:out>人
																</c:when>
																<c:otherwise>
																	无人购买
																</c:otherwise>
															</c:choose>
															
														</td>
														<td colspan="2"> 
															更新：<input type="number" required="required" name="pAllSubscriptionNum">人
														</td>
													</tr>
													<tr>
														<td colspan="4" style="text-align: center;">
															<input type="button" class="btn btn-small btn-warning" value="更新" onclick="projectAllSubscription();">
														</td>
													</tr>
												</table>
											</form>
										</td>
									</tr>
									<tr>
										<td colspan="4"> 
											<form  id="pRecruitmentSummary" >
												<table class="table table-striped table-bordered">
													<tr>
														<td>募集进度说明</td>
														<td>
															<input type="hidden" name="id" value="${project.id }">
															<textarea rows="" cols="" name="pRecruitmentSummary" id="pRecruitmentSummaryText" ><c:out value="${project.pRecruitmentSummary}" escapeXml="false"></c:out></textarea>
															<input type="button" value="修改进度" onclick="changepRecruitmentSummary();" class="btn btn-small btn-warning">
														</td>
													</tr>
														
												</table>
											</form>
										</td>
									</tr>
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
$('#pEstablishmentTimeStr').datetimepicker({
	   showSecond: true,
	   timeFormat: 'hh:mm:ss'
});
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
var ue = UE.getEditor('editor');

$(function(){
	$("#news").html5Validate(function(){
		$("#recommendReasonFrom").submit();
		});	
});

function projectAllSubscription(){
	$.post(
			"projectAllSubscription.shtml",
			$("#projectAllSubscription").serialize(),
			function(data,status){
				if(status === 'success' && data.result == 1){
					alert("更新成功");
					if(data.pAllSubscriptionAmount === null){
						("#pAllSubscriptionAmount").html("无人购买");
					}else if(data.pAllSubscriptionAmount/100000000 >=1){
						$("#pAllSubscriptionAmount").html(data.pAllSubscriptionAmount/100000000+"亿元")
					}else if(data.pAllSubscriptionAmount/10000 >=1){
						$("#pAllSubscriptionAmount").html(data.pAllSubscriptionAmount/10000+"万元");
					}else if(data.pAllSubscriptionAmount >=0){
						$("#pAllSubscriptionAmount").html(data.pAllSubscriptionAmount+"元");
					}else{
						("#pAllSubscriptionAmount").html("无人购买");
					}
				if(data.pAllSubscriptionNum === null){
					$("#pAllSubscriptionNum").html("无人购买");
				}else{
					$("#pAllSubscriptionNum").html(data.pAllSubscriptionNum+"人");
				}
				}else{
					alert("更新失败");
				}
			}
		);
}
function changepRecruitmentSummary(){
	if(confirm("确认修改募集进度？") == true){
		$.post(
				"changepRecruitmentSummary.shtml",
				$("#pRecruitmentSummary").serialize(),
				function(data,status){
					if(status === 'success' && data.result == 1){
						alert("更新成功");
					}else{
						alert("更新失败");
					}
				}
		);
	}
}
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
