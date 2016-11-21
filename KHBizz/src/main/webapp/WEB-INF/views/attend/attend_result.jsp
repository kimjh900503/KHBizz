<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	$(function () {
		$('#home').click(function () {
			location.href="${pageContext.session.servletContext.contextPath }/";
		});
	});
</script>
<body>
<!-- 출근버튼 눌렀을경우 들어오는 페이지로 출근 멤버의 부서 근태 확인 -->
	<h2>출근 현황</h2>
	<table>
		<tr>
			<td>부서</td>
			<td>직책</td>
			<td>이름</td>
			<td>출근시간</td>
			<td>퇴근시간</td>
		</tr>
		<tr>
			<td>${member.department }</td>
			<td>${member.position}</td>
			<td>${member.name}</td>
			<td>${attend.start }</td>
			<td>${attend.last }</td>
		</tr>
	</table>
	<input type="button" value="확인" id="home">
</body>
</html>