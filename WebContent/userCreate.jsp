<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta charset="utf-8">
<title>UserCreate画面</title>
<style type="text/css">
/* ========TAG LAYOUT======== */

#error {
	text-align: center;
	margin: 0 auto;
}

#btn {
	background: blue;
}

table {
	margin: 0 auto;
	background: white;
	border-collapse: separate;
	border-spacing: 10px;
}

table td { /*table内のtdに対して*/
	padding: 5px 15px; /*上下3pxで左右10px*/
	border-collapse: collapse;
	margin: 30px auto;
}

.left {
	background: #3575a0;
	color: #FCFCFC;
}
</style>
</head>
<body>
	<jsp:include page="subjsp/include.jsp" flush="true" />

			<s:if test="errorMassage != ''">
				<div id="error"><s:property  value="errorMassage" escape="false" /></div>
			</s:if>

		<table>

			<s:form action="UserCreateConfirmAction">


				<tr>
					<td class="left"><label>ログインID:</label></td>
					<td><input type="text" name="loginAddress" value="" /></td>
				</tr>
				<tr>
					<td class="left"><label>パスワード:</label></td>
					<td><input type="text" name="loginPassword" value="" /></td>
				</tr>
				<tr>
					<td class="left"><label>氏名:</label></td>
					<td><input type="text" name="userName" value="" /></td>
				</tr>
				<tr>
					<td class="left"><label>性別:</label></td>
					<td><label><input type="radio" name="gender" value="1"
							checked>男性</label> <label><input type="radio"
							name="gender" value="2">女性</label></td>
				</tr>
				<tr>
					<td class="left"><label>生年月日:</label></td>
					<td><jsp:include page="subjsp/birthday.jsp" flush="true" /></td>
				</tr>

				<s:submit value="確認" />

			</s:form>
		</table>

</body>
</html>