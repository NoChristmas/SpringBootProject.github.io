<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Admin 메뉴 시작 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/sidebar.css">
<div class="side-bar">
	<ul>
		<li>
			<input type="button" class="menu-btn" value="희망도서신청"
			  onclick="location.href='${pageContext.request.contextPath}/library/bookApplyMain.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="시설 이용"
			  onclick="location.href='${pageContext.request.contextPath}/library/facilityList.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="도서 기증"
			  onclick="location.href='${pageContext.request.contextPath}/library/donationMain.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="프로그램"
			  onclick="location.href='${pageContext.request.contextPath}/library/programList.do'">
		</li>
		<li>
			<input type="button" class="menu-btn" value="분실물"
			  onclick="location.href='${pageContext.request.contextPath}/library/liblostitem/list.do'">
		</li>
	</ul>
</div>
<!-- Admin 메뉴 끝 -->





