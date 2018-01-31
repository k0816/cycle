<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="subjsp/include.jsp" flush="true" />
	<s:hidden name="userId" value="%{userId}"/>
	<h3>送信する内容は以下でよろしいですか。</h3>
	<table>
				<tr id="box">
				<td><label>ログインアドレス:</label></td>
				<td><s:property value="loginAddress" escape="false" /></td>
			</tr>
			<tr id="box">
				<td><label>ログインパスワード:</label></td>
				<td><s:property value="loginPassword" escape="false" /></td>
			</tr>
			<tr>
				<td><a
					href='<s:url action="UserInfoEditCompleteAction">
					<s:param name="userId" value="%{userId}"/>
					<s:param name="loginAddress" value="%{loginAddress}"/>
         <s:param name="loginPassword" value="%{loginPassword}"/></s:url>'>
						<input type="submit" value="送信する" />
				</a></td>
			</tr>
	</table>




</body>
</html>