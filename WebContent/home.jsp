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
<title>Home画面</title>


<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<style type="text/css">

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

#slideshow {
   position: relative;
   width:  50%; /* ボックスの横幅 */
   height: 300px; /* ボックスの高さ */
}

#slideshow p {
   position: absolute;
   top:  0;
   left: 0;
   z-index: 8;
   opacity: 0.0;
   margin: 0;
   background-color: white; /* ボックスの背景色(必須) */
   height: 300px; /* ボックスの高さ */
}

#slideshow p.active {
   z-index: 10;
   opacity: 1.0;
}

#slideshow p.last-active {
   z-index: 9;
}

#slideshow p img {
   width:  100%; /* 画像の横幅 */
   height: 300px; /* 画像の高さ */
   display: block;
   border: 0;
   margin-bottom: 10px; /* 画像下部の余白 */
}
</style>

<script type="text/javascript">
function slideSwitch() {
   var $active = $('#slideshow p.active');

   if ( $active.length == 0 ) $active = $('#slideshow p:last');

   var $next =  $active.next().length ? $active.next()
      : $('#slideshow p:first');

   $active.addClass('last-active');

   $next.css({opacity: 0.0})
      .addClass('active')
      .animate({opacity: 1.0}, 1000, function() {
         $active.removeClass('active last-active');
      });
}

$(function() {
   setInterval( "slideSwitch()", 3000 );
});

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
	<s:if test="message!=null">
		<h3><s:property value="message"/></h3>
	</s:if>
		<s:property value="userId" />

<div id="slideshow">
   <p class="active">
      <a href="PartySearchaAction"><img src="image\10man.png" alt="画像1"></a>
      キャプション1
   </p>
   <p>
      <a href="PartySearchaAction"><img src="image\hand.jpg" alt="画像2"></a>
      キャプション2
   </p>
   <p>
      <a href="PartySearchaAction"><img src="bar.jpg" alt="画像3"></a>
      キャプション3
   </p>
   <p>
      <a href="リンク先"><img src="photo4.jpg" alt="画像4"></a>
      キャプション4
   </p>
   <p>
      <a href="リンク先"><img src="photo5.jpg" alt="画像5"></a>
      キャプション5
   </p>



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















</div>
</body>
</html>