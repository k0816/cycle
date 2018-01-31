<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>履歴</title>
<style type="text/css">
.list {
	border: 4px solid #82636b;
	border-radius: 240px 15px 185px 15px/15px 200px 15px 185px;
	margin: 1em 0;
	padding: 1em;
}
</style>

</head>
<body>
	<jsp:include page="subjsp/include.jsp" flush="true" />

	<s:if test="message!=null">
		<h1><s:property value="message"/></h1>
	</s:if>
	<s:if test="errorMessage!=null">
		<h1><s:property value="errorMessage"/></h1>
	</s:if>

	<h1>いいね！リスト</h1>
		<s:if test="nicePartyListList==null || nicePartyListList.isEmpty()">
	<h2>登録しているパーティーはございません。</h2>
	</s:if>

	<s:iterator value="nicePartyListList">
		<div class=list>
			<div>
				商品ID：
				<s:property value="partyId" />
			</div>
			<div>
				商品名：
				<s:property value="partyName" />
			</div>
			<div>
				開催日：
				<s:date name="partyDate" format="yyyy年MM月dd日" />
			</div>
			<div>
				開催地：
				<s:property value="partyPlace" />
			</div>
			<div>
				参加費　男性：<s:property value="malePrice" />円<br>
				　　　　女性：<s:property value="femalePrice" />円<br>
			</div>
			<div>
				追加日：
				<s:date name="insertDate" format="yyyy年MM月dd日" />
			</div>
			<a href='<s:url action="PartyDetailAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="詳しく見る" /></a>
			<br>
			<a href='<s:url action="NicePartyDeleteAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="削除する" /></a>
		</div>
	</s:iterator>

</body>
</html>