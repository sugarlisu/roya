<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="common/top.jsp"></jsp:include>		
<jsp:include page="common/left.jsp"></jsp:include>	
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
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>
											<c:choose>
												<c:when test="${result == 1 }">
													<font color="blue">产品风控信息添加成功</font>
												</c:when>
												<c:otherwise>
													产品风控信息添加失败，请<a href="./addProjectAnnualRevenuePer.shtml?pid=${project.id }" >重新添加</a>
												</c:otherwise>
											</c:choose>
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

<jsp:include page="common/foot.jsp"></jsp:include>					