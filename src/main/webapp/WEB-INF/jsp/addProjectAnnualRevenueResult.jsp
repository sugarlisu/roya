<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="./js/ueditor/ueditor.all.min.js"> </script>
			<div class="span9">
				<h1 class="page-title">
					<i class="icon-home"></i>
					产品添加					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品添加</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./addProjectRisk.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td colspan="2">
											<c:choose>
												<c:when test="${result == 1 }">
													<font color="blue">产品年化益率、返佣额度添加成功</font>
												</c:when>
												<c:otherwise>
													产品年化益率、返佣额度添加失败，请<a href="./addProjectAnnualRevenuePer.shtml?id=${project.id }" >重新添加</a>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									<c:if test="${result == 1 }">
										<tr>
											<td>
												风险等级
											</td>
											<td>
												<input type="hidden" name="pId" value="${pId }">
												<select name="pRiskRank">
													<option value="01">保守型</option>
													<option value="02" selected="selected">稳健型</option>
													<option value="03">积极型</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												风险控制说明
											</td>
											<td>
												<script id="editor" type="text/plain" style="width:750px;height: 750px;"></script>
											</td>
										</tr>
										<tr>
									<!-- 		<td>
												点评类型
											</td>
											<td>
												<select name="pCommentsType">
													<option value="01">平台点评</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>
												点评内容
											</td>
											<td>
												<textarea name="pCommentsContent"></textarea>
											</td>
										</tr>
										 -->
										<tr>
											<td colspan="2" style="text-align: center;">
												<input type="submit" value="提交" class="btn btn-small btn-warning">
											</td>
										</tr>
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
<!--
	var ue = UE.getEditor('editor');
//-->
</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
