<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/datepicker-ja.js"></script>
<link type="text/css" href="css/theme/jquery-ui.min.css"
	rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.theme.min.css"
	rel="stylesheet" />
<link type="text/css" href="css/theme/jquery-ui.structure.min.css"
	rel="stylesheet" />

<style type="text/css">

#link{
    position: absolute;
    font-weight:100;
	top: 70px;
	left: 0;
	right: 650px;
	bottom: 0;
	width: 300px;
	margin: 0 auto;
	font-size: 70%;

}

#searchBox {
	position: absolute;
	top: 100px;
	left: 0;
	right: 400px;
	bottom: 0;
	margin: 0 auto;
	width: 550px;
	height: 600px;
	background: white;
	border-radius: 3px;
	}

a.allN {
	line-height: 27px;
	height: 27px;
	margin-left: 4px;
	color:#FCFCFC;
}

#dateN {
	position: absolute;
	top: 5px;
	left: 0;
	right: 0;
	width: 98%;
	border-radius: 3px;
	margin: 0 auto;
	background: #3575a0;
	box-shadow: 1px 1px 3px;
}


#date {
	position: absolute;
	top: 50px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#week {
	position: absolute;
	top: 80px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#placeN {
	position: absolute;
	top: 120px;
	left: 0; right : 0;
	width: 98%;
	background: #3575a0;
	box-shadow: 1px 1px 3px;
	border-radius: 3px;
	margin: 0 auto;
	right: 0;
}

#place {
	position: absolute;
	top: 160px;
	left: 0;
	right: 0;
	bottom: 0;
	margin: 0 auto;
	height: 50px;
}

#ageN {
	position: absolute;
	top: 200px;
	left: 0;
	right: 0;
	width: 98%;
	background: #3575a0;
	box-shadow: 1px 1px 3px;
	border-radius: 3px;
	margin: 0 auto;
}

#age {
	position: absolute;
	top: 250px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#capaN {
	position: absolute;
	top: 300px;
	width: 98%;
	left: 0; right : 0;
	background: #3575a0;
	box-shadow: 1px 1px 3px;
	border-radius: 3px;
	margin: 0 auto;
	right: 0;
}

#capa {
	position: absolute;
	top: 350px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#priceN {
	position: absolute;
	top: 390px;
	left: 0;
	right: 0;
	width: 98%;
	background: #3575a0;
	box-shadow: 1px 1px 3px;
	border-radius: 3px;
	margin: 0 auto;
}

#male {
	position: absolute;
	top: 440px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#female {
	position: absolute;
	top: 470px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}

#searchBotan {
	position: absolute;
	top: 520px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 98%;
	margin: 0 auto;
	height: 50px;
}
</style>


<script type="text/javascript">
	/*---チェックリストの全解除、選択---*/
	flag = false;
	function allChangeWeek() {
		flag = !flag;
		var check = document.getElementsByName('partyWeek');
		for (i = 0; i < check.length; i++) {
			check[i].checked = !flag;
		}
	}

	flag = false;
	function allChangePlace() {
		flag = !flag;
		var check = document.getElementsByName('partyPlace');
		for (i = 0; i < check.length; i++) {
			check[i].checked = !flag;
		}
	}

	/*---カレンダー機能---*/
	$(function() {

		$("#date1").datepicker({
			changeMonth : true,
			numberOfMonths : 2,
			minDate: '0d',
	        maxDate: '+3m'
		});
		$("#date2").datepicker({
			changeMonth : true,
			numberOfMonths : 2,
			minDate: '0d',
	        maxDate: '+3m'
		});
	});


</script>
</head>


<body>

	<jsp:include page="subjsp/include.jsp" flush="true" />

	<div id="link"><a href="GoHomeAction">ＨＯＭＥ</A>　>　パーティーを探す</div>


	<s:if test="errorMessage!=null">
		<s:property value="errorMessage" />
	</s:if>

	<s:form id="searchBox" name="form" action="PartySearchResultAction">

		<div id="dateN">
			<a class="allN">開催日</a>
		</div>
		<div id="date">
			<input type="text" id="date1" name="partyDate">～<input
				type="text" id="date2" name="date2" /><br>
		</div>

		<div id="week">
			曜日：
			<label><input type="checkbox" name="partyWeek" value="1" checked>日</label>
			<label><input type="checkbox" name="partyWeek" value="2" checked>月</label>
			<label><input type="checkbox" name="partyWeek" value="3" checked>火</label>
			<label><input type="checkbox" name="partyWeek" value="4" checked>水</label>
			<label><input type="checkbox" name="partyWeek" value="5" checked>木</label>
			<label><input type="checkbox" name="partyWeek" value="6" checked>金</label>
			<label><input type="checkbox" name="partyWeek" value="7" checked>土</label>
			<!--  	<label><input name="selectAll" onclick="allChangeWeek(this.checked);"
				type="checkbox" />全解除／全選択</label> -->
		</div>
		<div id="placeN">
			<a class="allN">開催地</a>
		</div>
		<div id="place">
			<label><input type="checkbox" name="partyPlace"
				value="ikebukuro" checked>池袋</label> <label><input
				type="checkbox" name="partyPlace" value="shinjuku" checked>新宿</label>
			<label><input type="checkbox" name="partyPlace"
				value="shibuya" checked>渋谷</label> <label><input
				type="checkbox" name="partyPlace" value="shinagawa" checked>品川</label>
			<label><input type="checkbox" name="partyPlace" value="ueno"
				checked>上野</label> <label><input type="checkbox"
				name="partyPlace" value="roppongi" checked>六本木</label> <label><input
				name="selectAll" onclick="allChangePlace(this.checked);"
				type="checkbox" />全解除／全選択</label>
		</div>

		<div id="ageN">
			<a class="allN">年齢層</a>
		</div>
		<div id="age">
			<select name="ageMinimum">
				<option value="0">指定しない</option>
				<option value="20">20</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="35">35</option>
				<option value="40">40</option>
			</select> ～ <select name="ageMaximum">
				<option value="99">指定しない</option>
				<option value="25">25</option>
				<option value="30">30</option>
				<option value="35">35</option>
				<option value="40">40</option>
				<option value="45">45</option>
				<option value="50">50</option>
			</select> 歳
		</div>

		<div id="capaN">
			<a class="allN">参加人数</a>
		</div>
		<div id="capa">
			<select name="partyCapacity">
				<option value="0">指定しない</option>
				<option value="20">20</option>
				<option value="40">40</option>
				<option value="60">60</option>
				<option value="80">80</option>
				<option value="100">100</option>
			</select> ～ <select name="capa2">
				<option value="999">指定しない</option>
				<option value="20">20</option>
				<option value="40">40</option>
				<option value="60">60</option>
				<option value="80">80</option>
				<option value="100">100</option>
			</select> 人
		</div>

		<div id="priceN">
			<a class="allN">金額</a>
		</div>

		<div id="male">
			男性：<select name="malePrice">
				<option value="0">指定しない</option>
				<option value="1500">1500</option>
				<option value="3000">3000</option>
				<option value="4500">4500</option>
				<option value="6000">6000</option>
				<option value="7500">7500</option>
				<option value="9000">9000</option>
			</select> ～ <select name="malePrice2">
				<option value="99999">指定しない</option>
				<option value="3000">3000</option>
				<option value="4500">4500</option>
				<option value="6000">6000</option>
				<option value="7500">7500</option>
				<option value="9000">9000</option>
			</select> 円
		</div>
		<div id="female">
			女性：<select name="femalePrice">
				<option value="0">指定しない</option>
				<option value="1500">1500</option>
				<option value="3000">3000</option>
				<option value="4500">4500</option>
				<option value="6000">6000</option>
				<option value="7500">7500</option>
				<option value="9000">9000</option>
			</select> ～ <select name="femalePrice2">
				<option value="99999">指定しない</option>
				<option value="3000">3000</option>
				<option value="4500">4500</option>
				<option value="6000">6000</option>
				<option value="7500">7500</option>
				<option value="9000">9000</option>
			</select> 円
		</div>

		<div id="searchBotan">
 		<button type="submit" name="sort" value="date" style="WIDTH: 200px; HEIGHT:30px; background-color:#grey; color:white;">検索ボタン</button>
		</div>
	</s:form>



</body>
</html>