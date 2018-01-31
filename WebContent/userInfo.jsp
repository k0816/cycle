<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録情報</title>
<script>
function UserInfoDeleteAction(){
    document.getElementById('form').action="UserInfoDeleteCompleteAction";
}
</script>
</head>
<body>
	<jsp:include page="subjsp/include.jsp" flush="true" />

	<s:if test="message!=null">
		<h1><s:property value="message"/></h1>
	</s:if>


	<h3>登録情報確認</h3>

	<form id="form" name="form" action="UserInfoEditAction">
	アドレス：<s:property value="loginAddress" />
	<s:hidden name="loginAddress" value="%{loginAddress}"/>
	<br>
	パスワード：<s:property value="loginPassword" />
	<s:hidden name="loginPassword" value="%{loginPassword}"/><br>
		<input type="submit" value="編集する" /><br>
	</form>

    <br>※下記の情報は変更できません。<br>
	氏名：<s:property value="userName" />
	<s:hidden name="userName" value="%{userName}"/>
	<br>
	性別：
	<s:if test="gender==1">
	男性
	</s:if>
	<s:if test="gender==2">
	女性
	</s:if>
	<s:hidden name="gender" value="%{gender}"/>
	<br>
	生年月日：<s:date name="birthday" format="yyyy年MM月dd日"/>
	<s:hidden name="birthday" value="%{birthday}"/>
	(<s:property value="age" />歳)
    <br>

	<!--  <s:submit value="退会する" onclick="UserInfoDeleteCompleteAction();"/> -->
	 <a href='<s:url action="UserInfoDeleteCompleteAction"><s:param name="userId" value="%{userId}"/></s:url>'>
            <input type="submit" value="退会する" />
            </a>
</body>
</html>