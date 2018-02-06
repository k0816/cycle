<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>インクルード設定</title>
<style type="text/css">
#header {
	width: 100%;
	height: 50px;
	background-color: white;
	background-image: url("./image/town.png");
	box-shadow: 2px 2px 4px;
	position: fixed;
	z-index:100;
}

#headerIcon {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	width: 1000px;
	height: 50px;
}


#loginForm {
	position: absolute;
	left: 0px;
	top: 0px;
}

#add {
	position: absolute;
	left: 160px;
	top: 25px;
	background-color:#FF9;
}

#pass {
	position: absolute;
	left: 310px;
	top: 25px;
	background-color: #FF9;
}

#loginIcon {
	position: absolute;
	left: 460px;
	top: 25px;

}

#welcome {
	position: absolute;
	left: 160px;
	top: 25px;
	color:#fd951e;
}

#nice{
    position: absolute;
	left: 425px;
	top: 17px;

}

#join {
	position: absolute;
	left: 550px;
	top: 17px;
}

#info {
	position: absolute;
	left: 675px;
	top: 17px
	}

#create {
	position: absolute;
	left: 550px;
	top: 17px
}

#logout{
    color:#b4df9f;
	position: absolute;
	left: 820px;
	top: 30px;
	 font-size: 75%;
}

body {
font-family: arial,sans-serif;
font-weight:600;
	background: url("./image/001-Basik-Paper.png");

/* background: #f6f8f8; */
	margin: 0;
	padding: 0;
}

</style>
</head>
<body>
	<div id="header">
		<div id="headerIcon">
			<a id="logo" href='<s:url action="GoHomeAction"/>'><img
				src="image\logo.png" width="160" height="50"></a>

			<s:if test="#session.loginUser != null">
<span id="welcome">ようこそ！<s:property value="#session.loginUser.getUserName()" escape="false" />様！</span>
            </s:if>
			<s:else>
			<s:form id="loginForm" name="form" action="LoginAction">
					<input type="text" id="add" name="loginAddress" placeholder="IDを入力"
						size="16" />
					<input type="password" id="pass" name="loginPassword"
						placeholder="パスワードを入力" size="16" />
					<input type="image" id="loginIcon" src="image\loginW.png" width="70"
						height="25" alt="送信">
			</s:form>
			</s:else>

				<s:if test="#session.loginUser !=null">
						<a href="NicePartyListAction"><img id="nice" src="image\nice.png"
							width="120" height="30"></a>
						<a href="PartyJoinHistoryAction"><img id="join" src="image\join.png"
							width="120" height="30"></a>
						<a href="UserInfoAction"><img id="info" src="image\info.png"
							width="120" height="30"></a>
						<s:if test="#session.loginUser !=null">
						<a id="logout" href="LogoutAction">ログアウトはこちら</a></s:if>

				</s:if>
				<s:else>
						<a href="UserCreateAction"><img id="create" src="image\create.png"
							width="100" height="30"></a>
				</s:else>
			</div>
		</div>
	<br>
	<br>
	<br>
	<br>

</body>
</html>
