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
					公共活动添加				
				</h1>
				<form action="./addPublicActivities.shtml" method="post" enctype="multipart/form-data" id="addPublicActivities">
				<div class="widget widget-table">
										
					<div class="widget-header">
						<i class="icon-th-list"></i>
						<h3>公共活动添加	</h3>
					</div> <!-- /widget-header -->
					<c:choose>
						<c:when test="${result == 1 }">
							<font color="blue">活动添加成功</font>
						</c:when>
						<c:when test="${result == 0 }">
							<font color="red">活动添加失败</font>
						</c:when>
					</c:choose>
					<div class="widget-content">
					
							<table class="table table-striped table-bordered">
								<tbody>
									<tr>
										<td>
											活动举办方
										</td>
										<td>
											<input name="activitiesHost">
										</td>
									</tr>
									<tr>
										<td>
											活动名称
										</td>
										<td>
											<input name="activitiesTitle">
										</td>
									</tr>
									<tr>
										<td>活动副标</td>
										<td>
											<input name="activitiesSideTitle">
										</td>
									</tr>
									<tr>
										<td>开始时间</td>
										<td> 
										 	<input type="text" name="activitiesStartTime" id="activitiesStartTime" >
										</td> 
									</tr>
									<tr>
										<td>结束时间</td>
										<td> 
											<input type="text" name="activitiesEndTime" id="activitiesEndTime" >
										</td> 
									</tr>
									<tr>
										<td>报名截止时间</td>
										<td>
											<input type="text" name="activitiesRegistEndTime" id="activitiesRegistEndTime">
										</td>
									</tr>
									<tr>
										<td>费用说明</td>
										<td>
										 <input type="text" name="activitiesExpenseExplain">
										</td>
									</tr>
									<tr>
										<td>可报名人数</td>
										<td>
										 <input type="number" name="activitiesTotalPerson">人
										</td>
									</tr>
									<tr>
										<td>活动图片</td>
										<td>
										 <input type="file" name="activitiesImage">
										</td>
									</tr>
									<tr>
										<td>活动地址</td>
										<td>
										 <input type="text" name="activitiesAddre">
										</td>
									</tr>
									<tr>
										<td colspan="2" style="text-align: center;">
											<input type="radio" name="activitiesStatus" value="01" checked="checked">上架
											<input type="radio" name="activitiesStatus" value="02">下架
										</td>
									</tr>
									<tr>
										<td>具体内容</td>
										<td>
											<textarea id="editor_activitiesRecomment" name="activitiesRecomment"  style="width:750px; height: 500px"></textarea>
										</td>
									</tr> 
									<tr>
										<td colspan="2" style="text-align: center;">
										 <input type="submit" class="btn btn-small btn-warning"  value="新增">
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
<style>
</style>
<script type="text/javascript">

	$('#activitiesStartTime').datetimepicker({
		beforeShow:function(input) { 
	        $(input).css({ 
	            "position": "relative", 
	            "z-index": 999999 
	        }); 
	    } ,
	  timeFormat: 'hh:mm:ss'
	});
	$('#activitiesEndTime').datetimepicker({
		beforeShow:function(input) { 
	        $(input).css({ 
	            "position": "relative", 
	            "z-index": 999999 
	        }); 
	    } ,
	    timeFormat: 'hh:mm:ss'
	});
	$('#activitiesRegistEndTime').datetimepicker({
		beforeShow:function(input) { 
	        $(input).css({ 
	            "position": "relative", 
	            "z-index": 999999 
	        }); 
	    } ,
	    timeFormat: 'hh:mm:ss'
	});
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
   var editorSummary = new baidu.editor.ui.Editor({
        textarea: 'activitiesRecomment'
    });
    editorSummary.render('editor_activitiesRecomment');
    
    $(function(){
    	$("#addPublicActivities").html5Validate(function(){
    		$("#addPublicActivities").submit();
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