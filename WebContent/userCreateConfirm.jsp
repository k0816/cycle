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
		/* ========TAG LAYOUT======== */
		body {
		   margin:0;
		   padding:0;
		   line-height:1.6;
		   letter-spacing:1px;
		   font-family:Verdana, Helvetica, sans-serif;
		   font-size:12px;
		   color:#333;
		   background:#fff;
		}

		table {
			text-align:center;
			margin:0 auto;
		}


	</style>
</head>
<body>
<jsp:include page="subjsp/include.jsp" flush="true" />


			<p>登録情報確認</p>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="UserCreateCompleteAction">
					<tr id="box">
						<td>
							<label>ログインID:</label>
						</td>
						<td>
							<s:property value="loginAddress" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>ログインパスワード:</label>
						</td>
						<td>
							<s:property value="loginPassword" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>氏名:</label>
						</td>
						<td>
							<s:property value="userName" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>性別:</label>
						</td>
						<td>
						<s:if test="gender==1">
						男性
						</s:if>
						<s:if test="gender==2">
						女性
						</s:if>
	                    <s:hidden name="gender" value="%{gender}"/>
						</td>
					</tr><tr id="box">
						<td>
							<label>生年月日:</label>
						</td>
						<td>
							<s:property value="birthday" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<s:submit value="完了" />
						</td>
					</tr>
				</s:form>
			</table>
		</div>
</body>
</html>