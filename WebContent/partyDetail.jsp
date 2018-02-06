<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" >

/*未導入
function MoveCheck() {
    if( confirm("参加を確定しますか？") ) {
    }
}
*/

</script>

<title>詳細情報</title>
</head>
<body>
<jsp:include page="subjsp/include.jsp" flush="true" />

<img src='<s:property value="image" />' alt="画像" width="250" height="200">
<s:property value="partyId" />

<br>
<a href='<s:url action="PartyJoinCompleteAction">
<s:param name="userId" value="%{userId}"/>
         <s:param name="partyId" value="%{partyId}"/></s:url>'>
           <s:if test="#session.loginUser != null">
            <input type="submit" value="参加する" />
           </s:if>
</a>



</body>
</html>