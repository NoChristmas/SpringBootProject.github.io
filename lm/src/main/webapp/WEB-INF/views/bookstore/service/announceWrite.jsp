<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 게시판 글 등록 시작 -->
<!-- include libraries (jquery,bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.ck-editor__editable_inline{
	min-height:250px;
}
</style>
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include ckeditor js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/uploadAdapter.js"></script>
<div class="page-main">
	<form:form modelAttribute="announceVO" action="announceWrite.do" id="register_form">
		<form:errors element="div" cssClass="error-color"/>
		<ul class="form-default">
		    <li>
				<form:label path="board_title">제목</form:label>
				<form:input path="board_title" class="input-box" placeholder="제목을 입력하세요."/>
				<form:errors path="board_title" cssClass="error-color"/>
			</li>
			<li>
				<br><input type="file" name="filename"><br>
			</li>
			<li>
				<form:textarea path="board_content" class="input-textarea"/>
				<form:errors path="board_content" cssClass="error-color"/>
				<script>
					function MyCustomUploadAdapterPlugin(editor){
						editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
							return new UploadAdapter(loader);
						}
					}
					
					ClassicEditor.create(document.querySelector('#board_content'),{
						           extraPlugins:[MyCustomUploadAdapterPlugin]
					             })
					             .then(editor => {
					            	 window.editor = editor;
					             })
					             .catch(error => {
					            	 console.error(error);
					             });
				</script>
			</li>
		</ul>
		<div class="align-center">
			<form:button>작성</form:button>
			<input type="button" value="목록">
		</div>	                               
	</form:form>
</div>
<!-- 게시판 글 등록 끝 -->




