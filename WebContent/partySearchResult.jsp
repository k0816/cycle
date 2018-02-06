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
<title>検索結果</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/datepicker-ja.js"></script>
<link type="text/css" href="css/theme/jquery-ui.min.css" rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.theme.min.css" rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.structure.min.css" rel="stylesheet" />
<style type="text/css">
.list {
    border: 4px solid #82636b;
    margin: 1em 0;
    padding: 1em;
    position:relative;
    display: inline-block;

	}


.double{
    height : 300px ;
    width:1000px;
    margin: 0 auto;
    display: block;
    box-sizing: border-box;

}

.left{
  background:#D3DEF1;
    width:450px;
    height: 300px;
    padding : 3px 3px 3px 3px ;
    float: left;
    display: inline-block;
        border: 4px solid #82636b;

}
.searchBox{
    width : 450px ;
    height: 300px;
    padding : 3px 3px 3px 10px ;
    margin: 0 auto;
    background:#D3DEF1;
    float:right;
    display: inline-block;
    border: 4px solid #82636b;

}
.result{
    font-size: 200%;
    color: orange;
        text-align: center;

}

.imageBox{
 margin-left: auto;
 height : 100% ;
 padding : 0;
 display: inline-block;
}

.partyInfo{
 width :350px;
 background:#D3DEF1;
 padding : 3px 3px 3px 3px ;
    float: left;
    display: inline-block;

}


#main{

    width:1000px;
    margin:0 auto;

}

.searchResult{
    width:800px;
    background:white;
    padding : 0px 20px 0px 20px ;
    margin: 0 auto;
    display: block;
    box-sizing: border-box;

}

</style>

<script type="text/javascript">
/*---チェックリストの全解除、選択---*/
    flag =false;
    function allChangeWeek(){
        flag = !flag;
        var check = document.getElementsByName('partyWeek');
        for(i = 0; i < check.length; i++){
            check[i].checked = !flag;
        }
    }

    flag =false;
    function allChangePlace(){
        flag = !flag;
        var check = document.getElementsByName('partyPlace');
        for(i = 0; i < check.length; i++){
            check[i].checked = !flag;
        }
    }

/*---カレンダー機能---*/
    $(function() {
    	  $("#date1").datepicker( {
    	    changeMonth: true,
    	    numberOfMonths: 2,
    	    minDate: '0d',
	        maxDate: '+3m'
    	  } );
    	  $("#date2").datepicker( {
      	    changeMonth: true,
    	    numberOfMonths: 2,
    	    minDate: '0d',
	        maxDate: '+3m'
      	  } );
    	});
/*---カレンダー日付の初期値設定---*/



</script>


</head>



<body>

	<jsp:include page="subjsp/include.jsp" flush="true" />


	<s:if test="errorMessage!=null">
	<s:property value="errorMessage"/>
</s:if>

<div class="double">

<div class="left">
<s:form  class="form" name="form" action="PartySearchResultAction">

-検索条件-
<br>
開催日：
<s:if test="partyDate==null">指定なし</s:if>
<s:if test="partyDate!=null"><s:property value="partyDate" />～</s:if>
<s:if test="partyDate != null && Date != null">,</s:if>
<s:if test="date2!=null">～<s:property value="date2"/></s:if><br>
曜日：<s:property value="getWeekName()" />
<br>
開催地：<s:property value="partyPlace" />
<br>
年齢層：
<s:if test="ageMinimum == 0 && ageMaximum == 99 ">指定なし</s:if>
<s:if test="ageMinimum >1"><s:property value="ageMinimum" />歳～</s:if>
<s:if test="ageMinimum > 1 && ageMaximum < 99 ">,</s:if>
<s:if test="ageMaximum < 99">～<s:property value="ageMaximum" />歳</s:if><br>
参加人数：
<s:if test="partyCapacity == 0 && capa2 > 101 ">指定なし</s:if>
<s:if test="partyCapacity > 1"><s:property value="partyCapacity" />人～</s:if>
<s:if test="partyCapacity > 1 && capa2 < 101 ">,</s:if>
<s:if test="capa2 < 101">～<s:property value="capa2" />人</s:if><br>
参加料(男性)：
<s:if test="malePrice == 0 && malePrice2 > 9001 ">指定なし</s:if>
<s:if test="malePrice > 1 "><s:property value="malePrice"/>円～</s:if>
<s:if test="malePrice > 1 && malePrice2 < 9001 ">,</s:if>
<s:if test="malePrice2 < 9001 ">～<s:property value="malePrice2"/>円</s:if><br>
参加料(女性)：
<s:if test="femalePrice == 0 && femalePrice2 > 9001 ">指定なし</s:if>
<s:if test="femalePrice > 1 "> <s:property value="femalePrice"/>円～</s:if>
<s:if test="femalePrice > 1 && femalePrice2 < 9001 ">,</s:if>
<s:if test="femalePrice2 < 9001 ">～<s:property value="femalePrice2"/>円</s:if>
<br><br>
検索順：
		<s:if test="sort==1">開催日時が近い順</s:if>
		<s:if test="sort==2">開催日時が遠い順</s:if>
		<s:if test="sort==3">参加人数が少ない順</s:if>
		<s:if test="sort==4">参加人数が多い順</s:if>
<br><br>
<SELECT name="sort">
<option value="1">開催日時が近い順</option>
<option value="2">開催日時が遠い順</option>
<option value="3">参加人数が少ない順</option>
<option value="4">参加人数が多い順</option>
</SELECT>
<button type="submit">並び替え</button>

			<s:hidden name="partyDate" value="%{partyDate}"/>
			<s:hidden name="date2" value="%{date2}"/>
			<s:hidden name="partyWeek" value="%{partyWeek}"/>
			<s:hidden name="partyPlace" value="%{partyPlace}"/>
			<s:hidden name="ageMinimum" value="%{ageMinimum}"/>
			<s:hidden name="ageMaximum" value="%{ageMaximum}"/>
			<s:hidden name="partyCapacity" value="%{partyCapacity}"/>
			<s:hidden name="capa2" value="%{capa2}"/>
			<s:hidden name="malePrice" value="%{malePrice}"/>
			<s:hidden name="malePrice2" value="%{malePrice2}"/>
			<s:hidden name="femalePrice" value="%{femalePrice}"/>
			<s:hidden name="femalePrice2" value="%{femalePrice2}"/>
</s:form>

</div>

<div class="searchBox">

<s:form  action="PartySearchResultAction">
   開催日：<input type="text" id="date1" name="partyDate" value='<s:property value="partyDate" />' >～
   <input type="text" id="date2" name="date2" value='<s:property value="date2" />' /><br>


<!-- チェックボックスのみ値引継ぎ不可 -->
  曜日：
<label><input type="checkbox" name="partyWeek" value="1" checked>日曜</label>
<label><input type="checkbox" name="partyWeek" value="2" checked>月曜</label>
<label><input type="checkbox" name="partyWeek" value="3" checked>火曜</label>
<label><input type="checkbox" name="partyWeek" value="4" checked>水曜</label>
<label><input type="checkbox" name="partyWeek" value="5" checked>木曜</label>
<label><input type="checkbox" name="partyWeek" value="6" checked>金曜</label>
<label><input type="checkbox" name="partyWeek" value="7" checked>土曜</label>　
<br><br>
開催地：

<label><input type="checkbox" name="partyPlace"
				value="ikebukuro" checked>池袋</label> <label><input
				type="checkbox" name="partyPlace" value="shinjuku" checked>新宿</label>
			<label><input type="checkbox" name="partyPlace"
				value="shibuya" checked>渋谷</label> <label><input
				type="checkbox" name="partyPlace" value="shinagawa" checked>品川</label>
			<label><input type="checkbox" name="partyPlace" value="ueno"
				checked>上野</label> <label><input type="checkbox"
				name="partyPlace" value="roppongi" checked>六本木</label>
			<!--  <label><input name="selectAll" onclick="allChangePlace(this.checked);"
				type="checkbox" />全解除／全選択</label>  -->


<br><br>
年齢層：<select name="ageMinimum">
    <option value="0" <s:if test="ageMinimum==0">selected</s:if> >指定しない</option>
    <option value="20" <s:if test="ageMinimum==20">selected</s:if> >20</option>
    <option value="25" <s:if test="ageMinimum==25">selected</s:if> >25</option>
    <option value="30" <s:if test="ageMinimum==30">selected</s:if> >30</option>
    <option value="35" <s:if test="ageMinimum==35">selected</s:if> >35</option>
    <option value="40" <s:if test="ageMinimum==40">selected</s:if> >40</option>
  </select>　～
  <select name="ageMaximum">
    <option value="99" <s:if test="ageMaximum==99">selected</s:if> >指定しない</option>
    <option value="25" <s:if test="ageMaximum==25">selected</s:if> >25</option>

    <option value="30" <s:if test="ageMaximum==30">selected</s:if> >30</option>
    <option value="35" <s:if test="ageMaximum==35">selected</s:if> >35</option>
    <option value="40" <s:if test="ageMaximum==40">selected</s:if> >40</option>
    <option value="45" <s:if test="ageMaximum==45">selected</s:if> >45</option>
    <option value="50" <s:if test="ageMaximum==50">selected</s:if> >50</option>
  </select>　歳<br>
<br>
参加人数：<select name="partyCapacity">
    <option value="0" <s:if test="partyCapacity==0">selected</s:if>  >指定しない</option>
    <option value="20" <s:if test="partyCapacity==20">selected</s:if> >20</option>
    <option value="40" <s:if test="partyCapacity==40">selected</s:if> >40</option>
    <option value="60" <s:if test="partyCapacity==60">selected</s:if> >60</option>
    <option value="80" <s:if test="partyCapacity==80">selected</s:if> >80</option>
    <option value="100" <s:if test="partyCapacity==100">selected</s:if> >100</option>
  </select>　～
  <select name="capa2">
    <option value="999" <s:if test="capa2==999">selected</s:if> >指定しない</option>
    <option value="20" <s:if test="capa2==20">selected</s:if> >20</option>
    <option value="40" <s:if test="capa2==40">selected</s:if> >40</option>
    <option value="60" <s:if test="capa2==60">selected</s:if> >60</option>
    <option value="80"<s:if test="capa2==80">selected</s:if>  >80</option>
    <option value="100"<s:if test="capa2==100">selected</s:if>  >100</option>
  </select>　人<br>
<br>
金額　男性：<select name="malePrice">
    <option value="0" <s:if test="malePrice==0">selected</s:if> >指定しない</option>
    <option value="1500" <s:if test="malePrice==1500">selected</s:if> >1500</option>
    <option value="3000" <s:if test="malePrice==3000">selected</s:if> >3000</option>
    <option value="4500" <s:if test="malePrice==4500">selected</s:if> >4500</option>
    <option value="6000" <s:if test="malePrice==6000">selected</s:if> >6000</option>
    <option value="7500" <s:if test="malePrice==7500">selected</s:if> >7500</option>
    <option value="9000" <s:if test="malePrice==9000">selected</s:if>  >9000</option>
  </select>　～
  <select name="malePrice2">
    <option value="9999" <s:if test="malePrice2==9999">selected</s:if> >指定しない</option>
    <option value="3000" <s:if test="malePrice2==3000">selected</s:if> >3000</option>
    <option value="4500" <s:if test="malePrice2==4500">selected</s:if> >4500</option>
    <option value="6000" <s:if test="malePrice2==6000">selected</s:if> >6000</option>
    <option value="7500" <s:if test="malePrice2==7500">selected</s:if> >7500</option>
    <option value="9000" <s:if test="malePrice2==9000">selected</s:if> >9000</option>
  </select>　円<br>
　　　女性：<select name="femalePrice">
    <option value="0" <s:if test="femalePrice==0">selected</s:if> >指定しない</option>
    <option value="1500" <s:if test="femalePrice==1500">selected</s:if> >1500</option>
    <option value="3000" <s:if test="femalePrice==3000">selected</s:if> >3000</option>
    <option value="4500" <s:if test="femalePrice==4500">selected</s:if> >4500</option>
    <option value="6000" <s:if test="femalePrice==6000">selected</s:if> >6000</option>
    <option value="7500" <s:if test="femalePrice==7500">selected</s:if> >7500</option>
    <option value="9000" <s:if test="femalePrice==9000">selected</s:if> >9000</option>
  </select>　～
  <select name="femalePrice2">
    <option value="9999" <s:if test="femalePrice2==9999">selected</s:if> >指定しない</option>
    <option value="3000" <s:if test="femalePrice2==3000">selected</s:if> >3000</option>
    <option value="4500" <s:if test="femalePrice2==4500">selected</s:if> >4500</option>
    <option value="6000" <s:if test="femalePrice2==6000">selected</s:if> >6000</option>
    <option value="7500" <s:if test="femalePrice2==7500">selected</s:if> >7500</option>
    <option value="9000" <s:if test="femalePrice2==9000">selected</s:if> >9000</option>
  </select>　円<br><br>

<button type="submit" name="sort" value="1">検索</button>
</s:form>
</div>
</div>
<br>
<s:if test="ListDTO==null || ListDTO.isEmpty()">
		<h2>条件に合うパーティーがありません。</h2>
		</s:if>


		<!--商品検索結果-->

	<div class="result">検索結果：<s:property value="getPartyCount()"/>件</div><br>

		<div class="searchResult">
		<s:iterator value="listDTO" status="stt">
		<div class="countList">
		<span><s:property value="#stt.count"/></span>
		<div class="list">

		<div class="partyInfo">
		<s:if test ="joinCount==partyCapacity">
		売り切れ！
		</s:if>
		<s:if test="message!=null">
		<h3><s:property value="message"/></h3>
	    </s:if>

			<div class="partyName">
				名称：<s:property value="partyName" />
			</div>
			<div class="partyDate">
				開催日：<s:date name="partyDate" format="yyyy年MM月dd日" />
				<s:if test="partyWeek==1">(日)</s:if>
				<s:if test="partyWeek==2">(月)</s:if>
				<s:if test="partyWeek==3">(火)</s:if>
				<s:if test="partyWeek==4">(水)</s:if>
				<s:if test="partyWeek==5">(木)</s:if>
				<s:if test="partyWeek==6">(金)</s:if>
				<s:if test="partyWeek==7">(土)</s:if>
			</div>
			<div class="partyPlace">
			    開催地：<s:property value="partyPlace" />
			</div>
			<div class="partyPrice">
				参加費　男性：<s:property value="malePrice" />円<br>
				　　　　女性：<s:property value="femalePrice" />円
			</div>
			<div class="partyCapacity">
				参加人数：<s:property value="partyCapacity" />人
			</div>
			参加条件：<s:property value="ageMinimum" />歳 ～ <s:property value="ageMaximum" /> 歳
			<br><br>
            <s:if test="#session.loginUser != null">
	        <s:form name="form" action="NicePartyAction">
            <s:hidden name="partyId" value="%{partyId}"/>
 		    <button type="submit" >いいね！</button>
 		    </s:form>
 		    <s:form name="form" action="PartyJoinCompleteAction">
 		    <s:hidden name="userId" value="%{userId}"/>
 		    <s:hidden name="partyId" value="%{partyId}"/>
            <button type="submit" >参加する</button>
            </s:form>
            </s:if>
            <s:else>
            <br>※参加をご希望の方はログインをお願いします。
            </s:else>
            </div>
            <div class="imageBox">
		<img class="image" src='<s:property value="image" />' alt="画像" height="200" width="300" >
		</div>
		</div>
		</div>
		</s:iterator>
		</div>

</body>
</html>
