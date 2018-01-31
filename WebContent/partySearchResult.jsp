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



	}

#form{


}

.image{
position: absolute;
	left: 500px;
}

#main{

    width:1000px;
    margin:0 auto;

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


<div id="main">


    <s:date name="date.getDate()" format="yyyy年MM月dd日" />


	<s:if test="errorMessage!=null">
	<s:property value="errorMessage"/>
</s:if>
                    <!-- 詳細検索 -->
<s:form id="form" name="form" action="PartySearchResultAction">
   開催日：<input type="text" id="date1" name="partyDate" value='<s:property value="partyDate" />' >～
   <input type="text" id="date2" name="date2" value='<s:property value="date2" />' /><br>

  曜日：
<!--  <label><input type="checkbox" name="partyWeek" value="1" <s:if test="partyWeek==1">checked</s:if>>日曜</label>
<label><input type="checkbox" name="partyWeek" value="2" <s:if test="partyWeek==2">checked</s:if>>月曜</label>
<label><input type="checkbox" name="partyWeek" value="3" <s:if test="partyWeek==3">checked</s:if>>火曜</label>
<label><input type="checkbox" name="partyWeek" value="4" <s:if test="partyWeek==4">checked</s:if>>水曜</label>
<label><input type="checkbox" name="partyWeek" value="5" <s:if test="partyWeek==5">checked</s:if>>木曜</label>
<label><input type="checkbox" name="partyWeek" value="6" <s:if test="partyWeek==6">checked</s:if>>金曜</label>
<label><input type="checkbox" name="partyWeek" value="7" <s:if test="partyWeek==7">checked</s:if>>土曜</label>　
<label><input name="selectAll" onclick="allChangeWeek(this.checked);" type="checkbox"  />全解除／全選択</label>  -->
<label><input type="checkbox" name="partyWeek" value="1" checked>日曜</label>
<label><input type="checkbox" name="partyWeek" value="2" checked>月曜</label>
<label><input type="checkbox" name="partyWeek" value="3" checked>火曜</label>
<label><input type="checkbox" name="partyWeek" value="4" checked>水曜</label>
<label><input type="checkbox" name="partyWeek" value="5" checked>木曜</label>
<label><input type="checkbox" name="partyWeek" value="6" checked>金曜</label>
<label><input type="checkbox" name="partyWeek" value="7" checked>土曜</label>　

<br><br>
開催地：

<s:iterator value="partyPlaceList">
<label><input type="checkbox" name="partyPlace" value="ikebukuro" '<s:property value="dto.getPartyPlace">'>池袋</label>
<label><input type="checkbox" name="partyPlace" value="shinjuku" checked>新宿</label>
<label><input type="checkbox" name="partyPlace" value="shibuya" checked>渋谷</label>
<label><input type="checkbox" name="partyPlace" value="shinagawa" checked>品川</label>
<label><input type="checkbox" name="partyPlace" value="ueno" checked>上野</label>
<label><input type="checkbox" name="partyPlace" value="roppongi" checked>六本木</label>　
<label><input name="selectAll" onclick="allChangePlace(this.checked);" type="checkbox"  />全解除／全選択</label>
</s:iterator>

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

<button type="submit" name="sort" value="date">検索</button>
</s:form>



<s:form id="form" name="form" action="PartySearchResultAction">

-検索条件-<br>
開催日：
<s:if test="partyDate!=null"><s:property value="partyDate" />～</s:if>
<s:if test="partyDate != null && Date != null">,</s:if>
<s:if test="Date2!=null">～<s:property value="Date2"/></s:if><br>
開催地：<s:property value="partyPlace" /><br>
曜日：<s:property value="partyWeek" /><br>
年齢層：<s:if test="ageMinimum >1"><s:property value="ageMinimum" />歳～</s:if>
<s:if test="ageMinimum > 1 && ageMaximum < 99 ">,</s:if>
<s:if test="ageMaximum < 99">～<s:property value="ageMaximum" />歳</s:if><br>
参加人数：<s:if test="partyCapacity > 1"><s:property value="partyCapacity" />人～</s:if>
<s:if test="partyCapacity > 1 && capa2 < 101 ">,</s:if>
<s:if test="capa2 < 101">～<s:property value="capa2" />人</s:if><br>
参加料(男性)：<s:if test="malePrice > 1 "><s:property value="malePrice"/>円～</s:if>
<s:if test="malePrice > 1 && malePrice2 < 9001 ">,</s:if>
<s:if test="malePrice2 < 9001 ">～<s:property value="malePrice2"/>円</s:if><br>
参加料(女性)：<s:if test="femalePrice > 1 "> <s:property value="femalePrice"/>円～</s:if>
<s:if test="femalePrice > 1 && femalePrice2 < 9001 ">,</s:if>
<s:if test="femalePrice2 < 9001 ">～<s:property value="femalePrice2"/>円</s:if>
<br>
<button type="submit" name="sort" value="capa">参加人数が少ない順</button>

</s:form>


		<h2 class="title">検索結果</h2>
		<s:if test="sort==date">日付順表示</s:if>
		<s:if test="ListDTO==null || ListDTO.isEmpty()">
		<h2>条件に合うパーティーがありません。</h2>
		</s:if>

		<!--商品検索結果-->

		<div class="box"></div>
		<s:iterator value="listDTO">
		<div class="list">

		<div class="image">
		<img src='<s:property value="image" />' alt="画像" width="250" height="200">
		</div>
		<s:if test ="joinCount==partyCapacity">
		売り切れ！
		</s:if>
		<s:if test="date.getDate() >= partyDate">
		受付終了！
		</s:if>
		<s:if test="message!=null">
		<h3><s:property value="message"/></h3>
	    </s:if>
		<s:property value="partyDate" />　<s:property value="date.getDateDay()" />


		    <div class="partyId;">
		        パーティーID：<s:property value="partyId" />
		    </div>
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
				　　　　女性；<s:property value="femalePrice" />円
			</div>
			<div class="partyCapacity">
				参加人数：<s:property value="partyCapacity" />人
			</div>
			<div class="age">
			参加条件：<s:property value="ageMinimum" />歳 ～ <s:property value="ageMaximum" /> 歳
			</div>

			<div class="partyDetail">
			<s:property value="partyDetail" />
			</div>
			 <a href='<s:url action="PartyDetailAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="詳しく見る" />
            </a>
            <s:if test="#session.loginUser != null">
            　　　
             <a href='<s:url action="NicePartyAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="いいね！" />
            </a></s:if>

            <s:if test="#session.loginUser != null">
             <a href='<s:url action="PartyEditAction">
             <s:param name="partyId" value="%{partyId}"/>
             <s:param name="partyName" value="%{partyName}"/>
             <s:param name="partyDate" value="%{partyDate}"/>
             <s:param name="malePrice" value="%{malePrice}"/>
             <s:param name="femalePrice" value="%{femalePrice}"/>
             <s:param name="partyCapacity" value="%{partyCapacity}"/>
             <s:param name="partyPlace" value="%{partyPlace}"/>
             <s:param name="ageMinimum" value="%{ageMinimum}"/>
             <s:param name="ageMaximum" value="%{ageMaximum}"/>
             <s:param name="partyDetail" value="%{partyDetail}"/>
             </s:url>'>
            <input type="submit" value="内容を変更する" />
            </a>　　　
              <a href='<s:url action="PartyDeleteAction"><s:param name="partyId" value="%{partyId}"/></s:url>'>
            <input type="submit" value="削除する" />
            </a>　
            </s:if>
		</div>
		</s:iterator>
	</div>

</body>
</html>
