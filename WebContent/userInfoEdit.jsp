<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新内容入力</title>
<style type="text/css">

.title{
 font-size: 200%;
    color: orange;
    text-align : center ;
}
table{
    margin: 0 auto;
	background: white;
	border-collapse: separate;
	border-spacing: 10px;
}

table td { /*table内のtdに対して*/
	padding: 5px 15px;
	border-collapse: collapse;
	margin: 30px auto;
}

.left{
background: #3575a0;
	color: #FCFCFC;
}

.botan{
  width: 80px;
    height: 30px;
}

</style>
</head>
<body>
<jsp:include page="subjsp/include.jsp" flush="true" />

<div class="title">更新内容入力</div><br>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
				<s:form action="UserInfoEditConfirmAction">
					<tr>
						<td class="left"><label>メールアドレス:</label></td>
						<td><input type=text name="loginAddress" value='<s:property value="loginAddress"/>' /></td>
					</tr>
					<tr>
						<td class="left"><label>パスワード:</label></td>
						<td><input type="text" name="loginPassword" value='<s:property value="loginPassword"/>' /></td>
					</tr>
					<s:hidden name="userId" value="%{userId}"/>
					<s:submit  class="botan" value="確認" />
				</s:form>
			</table>
</body>
</html>