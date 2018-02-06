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
<title>マイページ</title>
<style type="text/css">
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<jsp:include page="subjsp/include.jsp" flush="true" />


	<div id="link">
		<a href="NicePartyListAction">お気に入りリスト</A>
	</div>

	<div id="link">
		<a href="PartyJoinHistoryAction">参加履歴</A>
	</div>

	<div id="link">
		<a href="UserInfoAction">登録情報確認</A>
	</div>

	<s:if test="#session.loginUser !=null">
		<a href="LogoutAction">ログアウト</a>
	</s:if>


</body>
</html>