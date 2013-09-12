<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
	<script src="theme/scripts/jquery-1.8.2.min.js"></script>
	<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script src="scripts/CalculateDays.js"></script>
	<script src="scripts/jquery.form.js"></script>	
	<script language="javascript" type="text/javascript"> 
	$(document).ready(function(){ 
		$('#ServiceCategory').val('${policy.rServicetype}');
		$('#InsuranceCompany').val('${policy.rInsurancecompany}');
		$('#IssuingType').val('${policy.rIssuingtype}');
		$('#ClientSubjection').val('${policy.rClientsubjection}');
		$('#BuyType').val('${policy.rBuytype}');
		
		<c:forEach var="i" begin="0" end="5" step="1"> 
		$('#BaoDanLeiXin${i}').val('${policyDetail[i].formtype }');
		</c:forEach>
		
		$('#GiftType').val('${policy.rGifttype}');
		
		$('.BaoDanLeiXin').focus(function(){
			this.defOpt=this.selectedIndex;
		});
		$('.BaoDanLeiXin').change(function(){
			this.selectedIndex=this.defOpt;
		});
		
		$('#ServiceCategory').change(function(){ 
			if($(this).children('option:selected').val() == '新车录入'){
				$('#kehufufei').text('客户付费');
				$('#xiaoshouzengsong').text('销售赠送');
				$('#BuyType').css('display','block') ;
			}else{
				$('#kehufufei').text('续保返还');
				$('#xiaoshouzengsong').text('续保返点');
				$('#BuyType').css('display','none'); 
			}
		});
		$('#submitBtn').click(function(){ 
			for(var number = 1; number < 6 ; number++){
				baoDanLeiXin(number);
			}	
			
		    $('#policyFrom').ajaxSubmit({ 
		        url:'updatePolicy.html', //提交给哪个执行
		        type:'POST', 
		        success: function(){alert('')} //显示操作提示
		        }); 
		    return false; //为了不刷新页面,返回false，反正都已经在后台执行完了，没事！
		});
	}) 
	
	function baoDanLeiXin(n){
		if($('#KeHuLiShu').val() == "外阜"){
			if($('#ServiceCategory').val() == '续保-杂牌'){
				$('#BaoDanLeiXin'+n).val('C类');
			}else{
				$('#BaoDanLeiXin'+n).val('A类');
			}
		}else{
			if($('#ServiceCategory').val() == '续保-杂牌'){
				$('#BaoDanLeiXin'+n).val('C类');
			}else if($('#ServiceCategory').val() == '流失客-外委拨入' || $('ServiceCategory').val() == '对手客-外委拨入'){
				$('#BaoDanLeiXin'+n).val('A类');
			}else if($('#ServiceCategory').val() == '新车录入'){
				if($('#ChuDanFangShi').val() == '电销' || $('#ChuDanFangShi').val() == '网销'){
					$('#BaoDanLeiXin'+n).val('B类');
				}else{     //新车录入,直销
					if($('#GouCheFangShi').val() == '全款'){ 
						if($.trim($('#BaoDanHao2').val()) == '' ){//保单号2为空,则为非联保
							if($('#ZheKou1').val() == '100'){  //全款,飞联保,全折
								$('#BaoDanLeiXin'+n).val('A类');
							}else{
								$('#BaoDanLeiXin'+n).val('B类');
							}
						}else{  //全款,联保
							$('#BaoDanLeiXin'+n).val('A类');
						} 
					}else{
						if($.trim($('#BaoDanHao2').val()) == '' ){//保单号2为空,则为非联保
							$('#BaoDanLeiXin'+n).val('B类');
						}else{  //贷款,联保
							if($('#ZheKou1').val() == 100){
								$('#BaoDanLeiXin1').val('A类');
							}else{
								$('#BaoDanLeiXin1').val('B类');
							}
							if($('#ZheKou2').val() >= 90){
								$('#BaoDanLeiXin2').val('A类');
							}else{
								$('#BaoDanLeiXin2').val('B类');
							}
							if($('#ZheKou3').val() >= 80){
								$('#BaoDanLeiXin3').val('A类');
							}else{
								$('#BaoDanLeiXin3').val('B类');
							}
							if($('#ZheKou4').val() >= 80){
								$('#BaoDanLeiXin4').val('A类');
							}else{
								$('#BaoDanLeiXin4').val('B类');
							}	
							if($('#ZheKou5').val() >= 80){
								$('#BaoDanLeiXin5').val('A类');
							}else{
								$('#BaoDanLeiXin5').val('B类');
							}
						} 
					}
				}
			}else{    //电销/店销-新售
				if($('#ChuDanFangShi').val() == '电销' || $('#ChuDanFangShi').val() == '网销'){
					$('#BaoDanLeiXin'+n).val('C类');
				}else{
					if($('#ZheKou1').val() == 100){
						$('#BaoDanLeiXin'+n).val('A类');
					}else if($('#ZheKou1').val() == 92){
						$('#BaoDanLeiXin'+n).val('B类');
					}else if($('#ZheKou1').val() == 85){
						$('#BaoDanLeiXin'+n).val('C类');
					}
				}
			}
		}		
	}
	</script> 
</head>

<body>
<form id="policyFrom">
<input type="hidden" name="id" value="${policyId }"/>
<input type="hidden" name="SaveDateTime" value="${time }"/>
<table width="668" height="418" border="1">
  <tr>
    <th colspan="8" scope="col"><h1><strong>业乔代理保险信息录入系统</strong>
      <label></label>
    </h1>
	  <div align="right"><span align="left">${policy.r1 }</span>  <span align="right">No.${policy.rId } ${policy.rSavedatetime }</span>
      </div></th>
  </tr>
  <tr>
    <td height="35" colspan="8" bgcolor="#FFFFFF">业务类别:
      <label>
      <select name="ServiceType" id="ServiceCategory">
        <option value="续保-杂牌">续保-杂牌</option>
        <option value="续保-店销-新售">续保-店销-新售</option>
        <option value="续保-电销-集团拨入">续保-电销-集团拨入</option>
        <option value="流失客-外委拨入">流失客-外委拨入</option>
        <option value="对手客-外委拨入">对手客-外委拨入</option>
        <option value="新车录入" >新车录入</option>
      </select>
    </label>
      保险公司:
      <select name="InsuranceCompany" id="InsuranceCompany">
        <option value="中保">中保</option>
        <option value="平安">平安</option>
        <option value="太平洋">太平洋</option>
        <option value="中华联合">中华联合</option>
        <option value="阳光">阳光</option>
        <option value="华泰">华泰</option>
        <option value="太平">太平</option>
      </select>
      出单方式:
      <select name="IssuingType" id="IssuingType">
        <option value="直销">直销</option>
        <option value="网销">网销</option>
        <option value="电销">电销</option>
      </select>
	  <br/>
	        投保人姓名:
      <label>
      <input name="DeliveyName" type="text" size="10" value="${policy.rDeliveyname }"/>
      </label>
      被保险人姓名:
    <input name="InsuredName" type="text" size="10" value="${policy.rInsuredname }"/> 
    被保险人电话:
    <input name="InsuredPhone" type="text" size="10" value="${policy.rInsuredphone }"/></td>
  </tr>
  <tr>
    <td height="60" colspan="8" bgcolor="#FFFFFF"><p>车牌号:
        <input name="CarNumber" type="text" size="10" value="${policy.rCarnumber }"/> 
    厂牌型号:
    <input name="ManufactureType" type="text" size="10" value="${policy.rManufacturetype }"/> 
    车架号(17位):
    <input name="CarframeNumber" type="text" size="20" value="${policy.rCarframenumber }"/>
    <br/>
    发动机号:
        <input name="EngineNumber" type="text" size="10" value="${policy.rEnginenumber }"/> 
    初始登记日期
    :
    <input name="FirstRegisterNumber" type="text" size="10" value="${policy.rFirstregisternumber }" onClick="WdatePicker()"/> 
    客户隶属:
      <select name="ClientSubjection" id="ClientSubjection">
        <option value="本地">本地</option>
        <option value="外阜">外阜</option>
      </select> 
      <span id="BuyType" style="display:none;">
      购车方式:
      <select name="BuyType" id="BuyType">
        <option value="全款">全款</option>
        <option value="贷款2年">贷款2年</option>
        <option value="贷款3年">贷款3年</option>
        <option value="贷款4年">贷款4年</option>
        <option value="贷款5年">贷款5年</option>
      </select>
      </span>
    </p>    </td>
  </tr>
  
  <tr>
    <td width="200" height="20" bgcolor="#CCCCCC"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1></td>
    <td width="121" bgcolor="#CCCCCC"><h3>商业险保单号</h3></td>
    <td width="70" bgcolor="#CCCCCC"><h3>单面折扣</h3></td>
    <td width="70" bgcolor="#CCCCCC"><h3>保费</h3></td>
    <td width="70" bgcolor="#CCCCCC"><h3 id="kehufufei">续保返还</h3></td>
    <td width="70" bgcolor="#CCCCCC"><h3 id="xiaoshouzengsong">续保返点</h3></td>
    <td width="73" bgcolor="#CCCCCC"><h3>保单类型</h3></td>
    <td width="88" bgcolor="#CCCCCC"><h3>商业险起期</h3></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC"><h5>首年交强险</h5></td>
    <td bgcolor="#CCCCCC"><input name="SALI" value="${policyDetail[0].commercenumber }" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[0].discount }" id="ZheKou1" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[0].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[0].pending1 }" id="kehufufei_input" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[0].pending2 }" id="xiaoshouzengsong_input" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select style="display:none;" name="FormType" class="BaoDanLeiXin">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input style="display:none;" name="CommerceBegin" value="${policyDetail[0].commercebegin }"  type="text" size="12" /></td>
  </tr>  
  <tr>
    <td bgcolor="#CCCCCC"><h5>商业第一年</h5></td>
    <td bgcolor="#CCCCCC"><input name="CommerceNumber" value="${policyDetail[1].commercenumber }" class="BaoDanHao" id="BaoDanHao1" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[1].discount }" id="ZheKou1" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[1].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[1].pending1 }" id="kehufufei_input" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[1].pending2 }" id="xiaoshouzengsong_input" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select name="FormType" class="BaoDanLeiXin" id="BaoDanLeiXin1">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input name="CommerceBegin" value="${policyDetail[1].commercebegin }" type="text" size="12" /></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC"><h5>商业第二年</h5></td>
    <td bgcolor="#CCCCCC"><input name="CommerceNumber" value="${policyDetail[2].commercenumber }"  id="BaoDanHao2" class="BaoDanHao" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[2].discount }" id="ZheKou2" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[2].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[2].pending1 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[2].pending2 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select name="FormType" class="BaoDanLeiXin" id="BaoDanLeiXin2">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input name="CommerceBegin" value="${policyDetail[2].commercebegin }" type="text" size="12" /></td>
  </tr>
  <tr>
    <td bgcolor="#CCCCCC"><h5>商业第三年</h5></td>
    <td bgcolor="#CCCCCC"><input name="CommerceNumber" value="${policyDetail[3].commercenumber }"  id="BaoDanHao3" class="BaoDanHao" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[3].discount }" id="ZheKou3" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[3].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[3].pending1 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[3].pending2 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select name="FormType" id="BaoDanLeiXin3" class="BaoDanLeiXin">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input name="CommerceBegin" value="${policyDetail[3].commercebegin }" type="text" size="12" /></td>
  </tr>
  <tr>
    <td height="23" bgcolor="#CCCCCC"><h5>商业第四年</h5></td>
    <td bgcolor="#CCCCCC"><input name="CommerceNumber" value="${policyDetail[4].commercenumber }"  id="BaoDanHao4" class="BaoDanHao" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[4].discount }" id="ZheKou4" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[4].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[4].pending1 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[4].pending2 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select name="FormType" id="BaoDanLeiXin4" class="BaoDanLeiXin">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input name="CommerceBegin" value="${policyDetail[4].commercebegin }" type="text" size="12" /></td>
  </tr>
  <tr>
    <td height="23" bgcolor="#CCCCCC"><h5>商业第五年</h5></td>
    <td bgcolor="#CCCCCC"><input name="CommerceNumber" value="${policyDetail[5].commercenumber }"  id="BaoDanHao5" class="BaoDanHao" type="text" size="17" /></td>
    <td bgcolor="#CCCCCC"><input name="Discount" value="${policyDetail[5].discount }" id="ZheKou5" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Charge" value="${policyDetail[5].charge }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending1" value="${policyDetail[5].pending1 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><input name="Pending2" value="${policyDetail[5].pending2 }" type="text" size="10" /></td>
    <td bgcolor="#CCCCCC"><select name="FormType" id="BaoDanLeiXin5" class="BaoDanLeiXin">
        <option value="A类">A类</option>
        <option value="B类">B类</option>
        <option value="C类">C类</option>
    </select></td>
    <td bgcolor="#CCCCCC"><input name="CommerceBegin" value="${policyDetail[5].commercebegin }" type="text" size="12" /></td>
  </tr>
  <tr>
    <td colspan="8"><div align="right">销售人:
        <input name="Saler" value="${policy.rSaler }" type="text" size="10" />
        出单人:
        <input name="IssuingName" value="${policy.rIssuingname }" type="text" size="10" />
     出单日期:
     <input name="IssuingDate" value="${policy.rIssuingdate }" type="text" size="10"  onClick="WdatePicker()"/>
     礼包类型
     :
      <select name="GiftType" id="GiftType">
        <option value="新车A礼包">新车A礼包</option>
        <option value="新车B礼包">新车B礼包</option>
        <option value="续保A礼包">续保A礼包</option>
        <option value="续保B礼包">续保B礼包</option>
        <option value="续保C礼包">续保C礼包</option>
        <option value="对手客礼包">对手客礼包</option>
        <option value="流失客礼包">流失客礼包</option>
        <option value="无礼包">无礼包</option>
      </select>
       <input name="textfield23232" type="button" id="submitBtn" size="10" value="保存并继续"/>
</div></td>
  </tr>
</table>
</form>
</body>
</html>
