<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者メニュー</title>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/datepicker-ja.js"></script>
<link type="text/css" href="css/theme/jquery-ui.min.css" rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.theme.min.css" rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.structure.min.css" rel="stylesheet" />

<script type="text/javascript">

/*---カレンダー機能---*/
    $(function() {
    	  $("#partyDate").datepicker( {
    	    changeMonth: true,
    	    numberOfMonths: 2,
    	  } );
    	});

</script>

</head>
<body>

	<jsp:include page="subjsp/include.jsp" flush="true" />

	<h1>管理者メニュー</h1>

<h3>商品登録</h3>
<s:form action="PartyAddAction">
					<tr>
						<td><label>パーティー名:</label></td>
						<td><input type=text name="partyName" /></td>
					</tr>
					<tr>
						<td><label>開催日:</label></td>
						<td><input type="text" id="partyDate" name="partyDate"/></td>
					</tr>
					<tr>
						<td><label>参加費　男性:</label></td>
						<td><input type="text" name="malePrice"/> 円</td>
					</tr>
					<tr>
						<td><label>　　　　女性:</label></td>
						<td><input type="text" name="femalePrice"/> 円</td>
					</tr>
					<tr>
						<td><label>定員数:</label></td>
						<td><input type="text" name="partyCapacity" /> 人</td>
					</tr>
					<tr>
						<td><label>開催地:</label></td>
						<td><input type="text" name="partyPlace"  /></td>
					</tr>
					<tr>
						<td><label>参加条件:</label></td>
						<td><input type="text" name="ageMinimum" /> 歳　～　
						<input type="text" name="ageMaximum" /> 歳</td>
					</tr>
					<tr>
						<td><label>説明文:</label></td>
						<td><input type="text" name="partyDetail" /></td>
					</tr>
					<tr>
						<td><label>画像パス:</label></td>
						<td><input type="text" name="image" /> 例「./image/○○○.jpg」</td>
					</tr>
					<s:submit value="送信" />
				</s:form>
<form action="AllPartyListAction">
					<input type="submit" value="全商品一覧画面へ" />
				</form>



</body>
</html>