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
					产品更新				
				</h1>
				<form action="./queryUpdateProjectList.shtml" method="post">
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>产品更新</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<c:if test="${result == 1 }">
										产品更新成功
									</c:if>
									<c:if test="${result == 0 }">
										产品更新失败
									</c:if>
									<tr>
										<td>
											产品名称:
										</td>
										<td>
											<input type="text" name="pName">
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align: center;">
										 <input type="submit" class="btn btn-small btn-warning"  value="查询">
										</td>
									</tr>
								</tbody>
						</table>
					</div> <!-- /widget-content -->
					
				</div> <!-- /widget -->
			</form>
			</div> <!-- /span9 -->
			
			
		</div> <!-- /row -->
		
	</div> <!-- /container -->
	
</div> <!-- /content -->

<jsp:include page="common/foot.jsp"></jsp:include>					
