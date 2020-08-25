<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
		function a() {
			var flag = confirm("정말 삭제하시겠습니까?");
			if(flag){
				document.f.action = "${pageContext.request.contextPath}/notice/Del?num=${notice.num}";
				document.f.submit();
			}else{
				alert("삭제가 취소되었습니다.");
			}			
		}	
	</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/notice/Edit"
		method="post" name="f">
		<table border="1">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" value="${notice.name }" name="name">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<input type="text" value="${notice.content }" name="content">
				</td>
			</tr>
			<td colspan="2">
				<input type="submit" value="수정">
				<input type="button" value="삭제" onclick="a()">
			</td>
		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</body>
</html>