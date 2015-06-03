<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>	
<style>
.tbo td{border-bottom:1px solid #ddd;}
</style>	
<jsp:include page="common/left.jsp"></jsp:include>	
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品修改					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品年利率返佣修改</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateProjectAnnualRevenue.shtml" method="post">
							<input type="hidden" name="id" value="${projectDTO.id }">
							<table class="table table-striped table-bordered">
								<tbody>
										<tr>
											<td>
												<table  class="table table-striped table-bordered">
													<thead >
														<tr class="tbo">
															<td>年化益率</td>
															<td>起始金额(单位:万元)</td>
															<td>结束金额(单位:万元)</td>
															<c:if test="${ !((!(corpProjectDTO.fpCorpId  eq '0')) && (corpProjectDTO.fpProjectCorpType eq '01')) }">
																<td>返佣类型</td>
																<td>返佣额度</td>
															</c:if>
															<td>增加</td>
														</tr>
													</thead>
													<tbody id ="rows">
														<c:choose>
															<c:when test="${!empty projectAnnualRevenue }">
																<c:forEach items="${projectAnnualRevenue }" var="projectAnnualRevenue" varStatus="varProjectAnnualRevenue">
																	<tr>
																	<td>
																		<input type="hidden" name="pId" value="${projectDTO.id }">
																		<input type="number" name="pAnnualRevenueExpect" required="required" value="${projectAnnualRevenue.pAnnualRevenueExpect}" oninvalid="this.setCustomValidity('请输入数字,保留两位小数');" oninput="setCustomValidity('');"  min="0" step="0.000001" maxlength="20" style="width: 80px">
																	</td>
																	<td><input type="number" name="pStartAmount" required="required" value="${projectAnnualRevenue.pStartAmount/10000 }" oninvalid="this.setCustomValidity('请输入数字金额,保留两位小数');" oninput="setCustomValidity('');" min="0" step="0.000001" maxlength="20" style="width: 80px"></td>
																	<td><input type="number" name="pEndAmount" required="required" value="${projectAnnualRevenue.pEndAmount/10000 }" oninvalid="this.setCustomValidity('请输入数字金额,保留两位小数');"  oninput="setCustomValidity('');" min="0" step="0.000001" maxlength="20" style="width: 80px"></td>
																	<c:if test="${ !((!(corpProjectDTO.fpCorpId  eq '0')) && (corpProjectDTO.fpProjectCorpType eq '01')) }">
																		<c:forEach items="${projectRabateList }" var="projectRabte" varStatus="varProjectRate">
																			<c:if test="${projectRabte.arId eq projectAnnualRevenue.id }">
																			<td>
																				<select name="pRabateType" style="width: 80px">
																					<c:choose>
																						<c:when test="${projectRabte.pRabateType eq '01' }"><option value="01" selected="selected">百分比</option></c:when>
																						<c:otherwise><option value="01">百分比</option></c:otherwise>
																					</c:choose>
																					<c:choose>
																						<c:when test="${projectRabte.pRabateType eq '02' }"><option value="02" selected="selected">固定值</option></c:when>
																						<c:otherwise><option value="02">固定值</option></c:otherwise>
																					</c:choose>
																				</select>
																			</td>
																			<td><input type="number" name="pRabateProfit" required="required" value="${projectRabte.pRabateProfit }"  oninvalid="this.setCustomValidity('请输入数字,保留两位小数');" oninput="setCustomValidity('');" maxlength="20" min="0" step="0.000001" style="width: 80px"></td>
																			</c:if>
																		</c:forEach>
																	</c:if>
																	<td>
																		<div class="btn btn-small btn-warning" onclick="addrows(this);">+</div>
																		<div class="btn btn-sqmll btn-warning" onclick="delrows(this);">-</div>
																	</td>
																</tr>
															</c:forEach>
															</c:when>
															<c:otherwise>
																<tr>
																<td>
																	<input type="hidden" name="pId" value="${projectDTO.id }">
																	<input type="number" name="pAnnualRevenueExpect" required="required" oninvalid="this.setCustomValidity('请输入数字,保留两位小数');" oninput="setCustomValidity('');"  min="0" step="0.000001" maxlength="20" style="width: 80px">
																</td>
																<td><input type="number" name="pStartAmount" required="required" oninvalid="this.setCustomValidity('请输入数字金额,保留两位小数');" oninput="setCustomValidity('');" min="0" step="0.000001" maxlength="20" style="width: 80px"></td>
																<td><input type="number" name="pEndAmount" required="required" oninvalid="this.setCustomValidity('请输入数字金额,保留两位小数');"  oninput="setCustomValidity('');" min="0" step="0.000001" maxlength="20" style="width: 80px"></td>
																<c:if test="${ !((!(corpProjectDTO.fpCorpId  eq '0')) && (corpProjectDTO.fpProjectCorpType eq '01')) }">
																	<td>
																		<select name="pRabateType" style="width: 80px">
																			<option value="01">百分比</option>
																			<option value="02">固定值</option>
																		</select>
																	</td>
																	<td><input type="number" name="pRabateProfit" required="required" oninvalid="this.setCustomValidity('请输入数字,保留两位小数');" oninput="setCustomValidity('');" maxlength="20" min="0" step="0.000001" style="width: 80px"></td>
																</c:if>
																<td>
																	<div class="btn btn-small btn-warning" onclick="addrows(this);">+</div>
																	<div class="btn btn-sqmll btn-warning" onclick="delrows(this);">-</div>
																</td>
															</tr>
															</c:otherwise>
														</c:choose>
															</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="5" style="text-align: center;">
												<input type="submit" value="提交">
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
function addrows(btn){
	var tr = $("#rows").append($(btn).closest("tr").clone());
}
function delrows(btn){
	$(btn).parent().parent().remove();
}
$(function(){
	$("#form").html5Validate(function(){$("#form").submit();});	
});
//-->
</script>

<jsp:include page="common/foot.jsp"></jsp:include>