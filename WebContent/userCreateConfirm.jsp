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
<title>登録情報確認画面</title>
	<style type="text/css">

		.title{
    font-size: 200%;
    color: orange;
    text-align : center ;
}

		table {
			margin: 0 auto;
			background: white;
			border-collapse: separate;
			border-spacing: 10px;
		}

table td {
	padding: 5px 15px;
	border-collapse: collapse;
	margin: 30px auto;
}

.left {
	background: #3575a0;
	color: #FCFCFC;
}

.create{
    text-align : right
}
.botan{
    width: 100px;
    height: 30px;
}
	</style>
</head>
<body>
<jsp:include page="subjsp/include.jsp" flush="true" />


	<div class="title">登録情報確認</div>
			<table>
				<s:form action="UserCreateCompleteAction">
						<s:hidden name="loginAddress" value="%{loginAddress}"/>
						<s:hidden name="loginPassword" value="%{loginPassword}"/>
				     	<s:hidden name="userName" value="%{userName}"/>
						<s:hidden name="gender" value="%{gender}"/>
						<s:hidden name="year" value="%{year}"/>
						<s:hidden name="month" value="%{month}"/>
						<s:hidden name="day" value="%{day}"/>
					<tr>
						<td class="left">ログインID:</td>
						<td>
							<s:property value="loginAddress" escape="false" />
						</td>
					</tr>
					<tr>
						<td class="left">
							<label>ログインパスワード:</label>
						</td>
						<td>
							<s:property value="loginPassword" escape="false" />
						</td>
					</tr>
					<tr>
						<td class="left">氏名:</td>
						<td>
							<s:property value="userName" escape="false" />
						</td>
					</tr>
					<tr>
						<td class="left">性別:</td>
						<td>
						<s:if test="gender==1">
						男性
						</s:if>
						<s:if test="gender==2">
						女性
						</s:if>
						</td>
					</tr>
					<tr>
						<td class="left">生年月日:</td>
						<td>
						<s:property value="year" />年
						<s:property value="month" />月
						<s:property value="day" />日
						</td>
					</tr>
					<tr>
						<td class="create" colspan="2"><input class="botan" type="submit" value="完了" /></td>
					</tr>
				</s:form>
			</table>
</body>
</html>