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
<style type="text/css">

.message{
    font-size: 150%;
    text-align : center ;
}

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

.kome{
    text-align : center ;
}
.edit{
    text-align : right ;
}

.delete{
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

	<s:if test="message!=null">
		<div class="message"><s:property value="message"/></div><br>
	</s:if>

	<div class="title">登録情報確認</div>
	<table>
	<form id="form" name="form" action="UserInfoEditAction">
	<s:hidden name="loginAddress" value="%{loginAddress}"/>
	<s:hidden name="loginPassword" value="%{loginPassword}"/><br>
	<s:hidden name="gender" value="%{gender}"/>
	<s:hidden name="userName" value="%{userName}"/>
	<s:hidden name="birthday" value="%{birthday}"/>
	<tr>
	     <td class="left">アドレス：</td>
	     <td><s:property value="loginAddress" /></td>
	</tr>
	<tr>
	     <td class="left">パスワード：</td>
	     <td><s:property value="loginPassword" /></td>
	</tr>
	<tr>
	     <td></td>
	     <td class="edit"><input class="botan" type="submit" value="編集する" /><td>
	</tr>
	</form>

	<tr>
        <td class="kome" colspan="2">※下記の情報は変更できません。</td>
    </tr>
    <tr>
	<td class="left">氏名：</td>
	<td><s:property value="userName" /></td>
	</tr>

	<tr>
	    <td class="left">性別：</td>
	    <td>
	    <s:if test="gender==1">男性</s:if>
	    <s:if test="gender==2">女性</s:if>
	    </td>
	</tr>
	<tr>
	     <td class="left">生年月日：</td>
	     <td><s:date name="birthday" format="yyyy年MM月dd日"/>(<s:property value="age" />歳)</td>
    </tr>

	 <tr>
	     <td class="delete" colspan="2" ><a href='<s:url action="UserInfoDeleteCompleteAction">
	     <s:param name="userId" value="%{userId}"/></s:url>'>
          <input class="botan" type="submit" value="退会する" /></a></td>
     </tr>
     </table>
</body>
</html>