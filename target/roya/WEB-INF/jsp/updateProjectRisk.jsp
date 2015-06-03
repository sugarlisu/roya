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
					风险控制信息修改					
				</h1>
				
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>风险控制信息修改</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
						<form action="./updateProjectRisk.shtml" method="post">
							<table class="table table-striped table-bordered">
								<tbody>
										<tr>
											<td>
												风险等级
											</td>
											<td>
												<input type="hidden" name="pId" value="${projectRisk.pId}">
												<select name="pRiskRank">
												
																								<c:choose>
													<c:when test="${projectRisk.pRiskRank eq '01' }"><option value="01" selected="selected">保守型</option></c:when>
													<c:when test="${projectRisk.pRiskRank != '01' }"><option value="01">保守型</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${projectRisk.pRiskRank eq '02' }"><option value="02" selected="selected">稳健型</option></c:when>
													<c:when test="${projectRisk.pRiskRank != '02' }"><option value="02">稳健型</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${projectRisk.pRiskRank eq '03' }"><option value="03" selected="selected">积极型</option></c:when>
													<c:when test="${projectRisk.pRiskRank != '03' }"><option value="03">积极型</option></c:when>
												</c:choose>
												
												</select>
											</td>
										</tr>
										<tr>
											<td>
												风险控制说明
											</td>
											<td>
												<textarea id="editor_pRiskRankComtent" name="pRiskRankComtent"  style="width:750px;height: 750px;" ><c:out value="${projectRisk.pRiskRankComtent }" escapeXml="false"></c:out></textarea>
											</td>
										</tr>
										<tr>
										<tr>
											<td colspan="2" style="text-align: center;">
												<input type="submit" value="提交" class="btn btn-small btn-warning">
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
//实例化编辑器
	
	//担保方富文本
	var editorRiskRankComtent = new baidu.editor.ui.Editor({
	    textarea: 'pRiskRankComtent'
	    });
	editorRiskRankComtent.render("editor_pRiskRankComtent");

</script>
<jsp:include page="common/foot.jsp"></jsp:include>					
