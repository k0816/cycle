<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新内容入力</title>
</head>
<body>
<jsp:include page="subjsp/include.jsp" flush="true" />

<h3>更新内容入力</h3>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
				<s:form action="UserInfoEditConfirmAction">
					<tr>
						<td><label>メールアドレス:</label></td>
						<td><input type=text name="loginAddress" value='<s:property value="loginAddress"/>' /></td>
					</tr>
					<tr>
						<td><label>パスワード:</label></td>
						<td><input type="text" name="loginPassword" value='<s:property value="loginPassword"/>' /></td>
					</tr>
					<s:hidden name="userId" value="%{userId}"/>
					<s:submit value="送信" />
				</s:form>
			</table>
		</div>




</body>
</html>