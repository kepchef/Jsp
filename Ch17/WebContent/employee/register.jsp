<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>직원등록</title>
</head>
<body>
	<h3>직원등록</h3>
	<form action="/Ch17/employee/register.do" method="post">	
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="uid" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<label><input type="radio" name="gender" value="1" />남</label>
					<label><input type="radio" name="gender" value="2" />여</label>
				</td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td><input type="text" name="hp" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>직급</td>
				<td>
					<select name="pos">
						<option>사원</option>
						<option>대리</option>
						<option>과장</option>
						<option>차장</option>
						<option>부장</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td>
					<select name="dep">
						<option value="101">영업1부</option>
						<option value="102">영업2부</option>
						<option value="103">영업3부</option>
						<option value="104">영업지원부</option>
						<option value="105">인사부</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="submit" value="등록하기" />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>