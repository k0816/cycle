<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	/* background-color: white; */
	background: url("./image/town.png");

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

/*

#search, #create, #mypage :active{
position:relative;
top:2px;
}

#search,#create,#mypage :hover{
	opacity: 0.6 ;
}

*/

#loginForm {
	position: absolute;
	left: 0px;
	top: 0px;
}

#add {
	position: absolute;
	left: 160px;
	top: 20px;
	background-color:#FF9;
}

#pass {
	position: absolute;
	left: 310px;
	top: 20px;
	background-color: #FF9;
}

#loginIcon {
	position: absolute;
	left: 460px;
	top: 19px;

}

#welcome {
	position: absolute;
	left: 160px;
	top: 25px;
	color:#fd951e;
}

#mypage{
    position: absolute;
	left: 420px;
	top: 10px;

}

#search {
	position: absolute;
	left: 550px;
	top: 10px;
}

#create {
	position: absolute;
	left: 685px;
	top: 10px
}

#other {
	position: absolute;
	right: 0px;
	z-index:101;
}


body {
font-family: arial,sans-serif;
font-weight:600;
/*	background: url("./image/wood.jpg"); */
	background: url("./image/001-Basik-Paper.png");

/* background: #f6f8f8; */
	margin: 0;
	padding: 0;
}
/* ドロップダウンメニューについて */
#dropmenu {
	list-style-type: none;
	width: 100px;
	height: 40px;
	margin: 0px auto 0px;
	padding: 0;
	background: white;
	border-bottom: 5px solid #7f7f7f;
	border-radius: 3px 3px 0 0;;
}

#dropmenu li {
	position: relative;
	width: 100%;
	float: left;
	margin: 0;
	padding: 0;
	text-align: center;
}

#dropmenu li a {
	display: block;
	margin: 0;
	padding: 10px;
	color: black;
	font-size: 14px;
	font-weight: bold;
	line-height: 1;
	text-decoration: none;
}

#dropmenu li:hover>a {
	background: #bfbfbf;;
	color: #eff7b1;
}

#dropmenu>li:hover>a {
	border-radius: 3px 3px 0 0;
}

#dropmenu li ul {
	list-style: none;
	position: absolute;
	top: 100%;
	left: 0;
	margin: 0;
	padding: 0;
	border-radius: 0 0 3px 3px;
}

#dropmenu li ul li {
	overflow: hidden;
	width: 100%;
	height: 0;
	color: #fff;
	-moz-transition: .2s;
	-webkit-transition: .2s;
	-o-transition: .2s;
	-ms-transition: .2s;
	transition: .2s;
}

#dropmenu li ul li a {
	padding: 13px 13px;
	background: #bfbfbf;
	text-align: center;
	font-size: 12px;
	font-weight: normal;
}

#dropmenu li:hover ul li {
	overflow: visible;
	height: 38px;
	border-top: 1px solid #bfbfbf;
	border-bottom: 1px solid #616d0b;
}

#dropmenu li:hover ul li:first-child {
	border-top: 0;
}

#dropmenu li:hover ul li:last-child {
	border-bottom: 0;
}

#dropmenu li:hover ul li:last-child a {
	border-radius: 0 0 3px 3px;
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


			<a href="PartySearchAction"><img id="search" src="image\partyW.png" width="120" height="30"></a>

				<s:if test="#session.loginUser !=null">
						<a href="MyPageAction"><img id="mypage" src="image\mypageW.png"
							width="120" height="30"></a>
				</s:if>
				<s:else>
						<a href="UserCreateAction"><img id="create" src="image\createW.png"
							width="110" height="30"></a>
				</s:else>
			</div>
		</div>

		<!-- ドロップダウンメニュー -->
		<div id="other">
			<ul id="dropmenu">
				<li><a href="#">その他</a>
					<ul>
						<li><a href="ToNewUserAction">お知らせ</a></li>
						<li><a href="ToNewUserAction">初めての方へ</a></li>
						<li><a href="#">会社概要</a></li>
						<li><a href="#">お問い合わせ</a></li>
						<li><s:if test="#session.loginUser !=null">
								<a href="LogoutAction">ログアウト</a>
							</s:if></li>
					</ul></li>
			</ul>
		</div>
	<br>
	<br>
	<br>
	<br>


</body>
</html>
