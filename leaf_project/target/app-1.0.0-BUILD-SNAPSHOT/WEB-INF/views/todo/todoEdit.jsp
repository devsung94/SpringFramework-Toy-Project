<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<form action="todoModify.do" method="post">
		<table border="1">
			<tr>
				<th>글번호</th>
				<td>${todoBoard.boNo }<input type="hidden" name="boNo"
					value="${todoBoard.boNo }">
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="boTitle"
					value="${todoBoard.boTitle }" required="required"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${todoBoard.boWriter }<input type="hidden" name="boWriter"
					value="${todoBoard.boWriter }">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="boPass" value=""
					required="required"></td>
			</tr>
			<tr>
				<th>분류</th>
				<td><input type="text" name="boCategory"
					value="${todoBoard.boCategory }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" name="boContent">${todoBoard.boContent } </textarea></td>
			</tr>

			<tr>
				<th>최근등록일자</th>
				<td>${todoBoard.boModDate eq null ? todoBoard.boRegDate : todoBoard.boModDate }
				</td>
			</tr>
			<tr>
				<td>
					<button type="submit" > 수정</button>

					<button type="submit" formaction="todoDelete.do">삭제</button>
				</td>
			</tr>
		</table>
	</form>


</body>
</html>