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
					资讯修改			
				</h1>
				<form action="./updateNews.shtml" method="post" enctype="multipart/form-data" id="news">
				<input type="hidden" name="id" value="${newsDetail.id }">
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>资讯修改</h3>
					</div> <!-- /widget-header -->
					
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>
											优先级
										</td>
										<td>
											<select name="sort">
												<c:choose>
													<c:when test="${newsDetail.sort eq '1' }"><option value="1" selected="selected">最高</option></c:when>
													<c:when test="${newsDetail.sort != '1' }"><option value="1">最高</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.sort eq '2' }"><option value="2" selected="selected">适中</option></c:when>
													<c:when test="${newsDetail.sort != '2' }"><option value="2">适中</option></c:when>
												</c:choose>
											</select>
										</td>
									</tr>
									<tr>
										<td>资讯类型</td>
										<td>
											<select name="type">
												<c:choose>
													<c:when test="${newsDetail.type eq '1' }"><option value="1" selected="selected">公司信息</option></c:when>
													<c:when test="${newsDetail.type != '1' }"><option value="1">公司信息</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '2' }"><option value="2" selected="selected">行业动态</option></c:when>
													<c:when test="${newsDetail.type != '2' }"><option value="2">行业动态</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '3' }"><option value="3" selected="selected">国家政策</option></c:when>
													<c:when test="${newsDetail.type != '3' }"><option value="3">国家政策</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '4' }"><option value="4" selected="selected">行业知识</option></c:when>
													<c:when test="${newsDetail.type != '4' }"><option value="4">行业知识</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '5' }"><option value="5" selected="selected">法律法规</option></c:when>
													<c:when test="${newsDetail.type != '5' }"><option value="5">法律法规</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '6' }"><option value="6" selected="selected">活动精彩回顾</option></c:when>
													<c:when test="${newsDetail.type != '6' }"><option value="6">活动精彩回顾</option></c:when>
												</c:choose>
												<c:choose>
													<c:when test="${newsDetail.type eq '7' }"><option value="7" selected="selected">其他</option></c:when>
													<c:when test="${newsDetail.type != '7' }"><option value="7">其他</option></c:when>
												</c:choose>
											</select>
										</td>
									</tr>
									<tr>
										<td>标题</td>
										<td> 
										 	<input type="text" name="title" required="required" value="${newsDetail.title }">
										</td> 
									</tr>
									<tr>
										<td>正文</td>
										<td> 
											<textarea id="editor_contents" name="contents"  style="width:750px;height: 750px;" ><c:out value="${newsDetail.contents }"></c:out></textarea>
										</td> 
									</tr>
									<tr>
										<td>图片</td>
										<td>
										 <input type="file" name="productPhoto">
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align: center;">
										 <input type="submit" class="btn btn-small btn-warning"  value="修改">
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
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	   var editorSummary = new baidu.editor.ui.Editor({
	        textarea: 'contents'
	    });
	    editorSummary.render('editor_contents');
	    
    $(function(){
    	$("#news").html5Validate(function(){
    		$("#news").submit();
    		});	
    });
    
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e);
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e);
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }
</script>

<jsp:include page="common/foot.jsp"></jsp:include>					
