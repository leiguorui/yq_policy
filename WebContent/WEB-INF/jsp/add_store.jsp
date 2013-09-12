<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
<!--

form {  /* set width in form, not fieldset (still takes up more room w/ fieldset width */
  font:100% verdana,arial,sans-serif;
  margin: 0;
  padding: 0;
}

form fieldset {
  / * clear: both; note that this clear causes inputs to break to left in ie5.x mac, commented out */
  border-color: red;
  border-width: 1px;
  border-style: solid;
  padding: 10px;        /* padding in fieldset support spotty in IE */
  margin: 0;
}

form fieldset legend {
	font-size:1.1em; /* bump up legend font size, not too large or it'll overwrite border on left */
                       /* be careful with padding, it'll shift the nice offset on top of border  */
}

form label { 
	display: block;  /* block float the labels to left column, set a width */
	float: left; 
	width: 150px; 
	padding: 0; 
	margin: 5px 0 0; /* set top margin same as form input - textarea etc. elements */
	text-align: right; 
}

form fieldset label:first-letter { /* use first-letter pseudo-class to underline accesskey, note that */
	text-decoration:underline;    /* Firefox 1.07 WIN and Explorer 5.2 Mac don't support first-letter */
                                    /* pseudo-class on legend elements, but do support it on label elements */
                                    /* we instead underline first letter on each label element and accesskey */
                                    /* each input. doing only legends would  lessens cognitive load */
                                   /* opera breaks after first letter underlined legends but not labels */
}

form input, form textarea {
	/* display: inline; inline display must not be set or will hide submit buttons in IE 5x mac */
	width:auto;      /* set width of form elements to auto-size, otherwise watch for wrap on resize */
	margin:5px 0 0 10px; /* set margin on left of form elements rather than right of
                              label aligns textarea better in IE */
}

form input#reset {
	margin-left:0px; /* set margin-left back to zero on reset button (set above) */
}

textarea { overflow: auto; }

form small {
	display: block;
	margin: 0 0 5px 160px; /* instructions/comments left margin set to align w/ right column inputs */
	padding: 1px 3px;
	font-size: 88%;
}

form .required{font-weight:bold;} /* uses class instead of div, more efficient */

form br {
	clear:left; /* setting clear on inputs didn't work consistently, so brs added for degrade */
}
-->
</style>

<script>
function sf(){document.getElementById("account_id").focus();}
</script>
</head>
<body onLoad=sf()>

<form:form commandName="store" action="addStore.html">
<fieldset>
<legend>门店信息录入</legend>
	<label for="lastname" accesskey="l">门店名: </label>
		<form:input path="name" type="text" tabindex="2" title="last name"/><br>
	<label for="kludge"></label>
		<input type="submit" value="保存" id="submit" tabindex="5"> 
		<INPUT type="reset" id="reset" value="重置" tabindex="6">
		
</fieldset>
</form:form>
<script src="theme/scripts/jquery-1.8.2.min.js"></script>
<script src="scripts/jquery.form.js"></script>
<script>
$('#id_submit').click(function(){
    $('#id_policyForm').ajaxSubmit({ 
        url:'addStroe.html', //提交给哪个执行
        type:'POST', 
        success: function(){alert("1");} //显示操作提示
        }); 
    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
});
</script>
</body>
</html>