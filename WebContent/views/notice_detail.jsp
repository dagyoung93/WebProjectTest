<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
		function a() {
			var flag = confirm("���� �����Ͻðڽ��ϱ�?");
			if(flag){
				document.f.action = "${pageContext.request.contextPath}/notice/Del?num=${notice.num}";
				document.f.submit();
			}else{
				alert("������ ��ҵǾ����ϴ�.");
			}			
		}	
	</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/notice/Edit"
		method="post" name="f">
		<table border="1">
			<tr>
				<th>����</th>
				<td>
					<input type="text" value="${notice.name }" name="name">
				</td>
			</tr>
			<tr>
				<th>����</th>
				<td>
					<input type="text" value="${notice.content }" name="content">
				</td>
			</tr>
			<td colspan="2">
				<input type="submit" value="����">
				<input type="button" value="����" onclick="a()">
			</td>
		</table>
		<input type="hidden" name="num" value="${p.num }">
	</form>
</body>
</html>