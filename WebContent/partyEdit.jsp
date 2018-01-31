<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="subjsp/include.jsp" flush="true" />
		<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
				<s:form action="PartyEditCompleteAction">
					<tr>
						<td><label>パーティー名:</label></td>
						<td><input type=text name="partyName" value='<s:property value="partyName"/>' /></td>
					</tr>
					<tr>
						<td><label>開催日:</label></td>
						<td><input type="text" name="partyDate" value='<s:property value="partyDate"/>' /></td>
					</tr>
					<tr>
						<td><label>参加費　男性:</label></td>
						<td><input type="text" name="malePrice" value='<s:property value="malePrice"/>' /></td>
					</tr>
					<tr>
						<td><label>　　　　女性:</label></td>
						<td><input type="text" name="femalePrice" value='<s:property value="femalePrice"/>' /></td>
					</tr>
					<tr>
						<td><label>参加人数:</label></td>
						<td><input type="text" name="partyCapacity" value='<s:property value="partyCapacity"/>' /></td>
					</tr>
					<tr>
						<td><label>開催地:</label></td>
						<td><input type="text" name="partyPlace" value='<s:property value="partyPlace"/>' /></td>
					</tr>
					<tr>
						<td><label>参加条件:</label></td>
						<td><input type="text" name="ageMinimum" value='<s:property value="ageMinimum"/>' />～
						<input type="text" name="ageMaximum" value='<s:property value="ageMaximum"/>' /></td>
					</tr>
					<tr>
						<td><label>説明文:</label></td>
						<td><input type="text" name="partyDetail" value='<s:property value="partyDetail"/>' /></td>
					</tr>
					<tr>
						<td><label>画像パス:</label></td>
						<td><input type="text" name="image" value='<s:property value="image"/>' /></td>
					</tr>
						<s:hidden name="partyId" value="%{partyId}"/>
					<s:submit value="送信" />
				</s:form>
			</table>

</body>
</html>