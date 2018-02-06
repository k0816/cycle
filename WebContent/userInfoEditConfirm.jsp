<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<s:hidden name="userId" value="%{userId}"/>
	<div class="title">変更内容確認</div><br>
	<table>
		<s:form action="UserInfoEditCompleteAction">

			<tr>
				<td class="left">ログインアドレス:</td>
				<td><s:property value="loginAddress" escape="false" /></td>
			</tr>
			<tr>
				<td class="left">ログインパスワード:</td>
				<td><s:property value="loginPassword" escape="false" /></td>
			</tr>
					<s:hidden name="userId" value="%{userId}"/>
					<s:hidden name="loginAddress" value="%{loginAddress}"/>
         <s:hidden name="loginPassword" value="%{loginPassword}"/>
						<s:submit class="botan" value="送信" />
		</s:form>
	</table>




</body>
</html>