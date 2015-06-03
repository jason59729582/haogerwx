<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="e" uri="/eframe-tags"%>
 
<! DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<style type="text/css" media="screen">
html,body {
	margin: 0px;
	padding: 0px;
	height: 100%;
}
</style>
 <link href="activity-style.css" rel="stylesheet" type="text/css">

<link href="message.css" rel="stylesheet" type="text/css">
 
 

<script type="text/javascript">
   var RepairName='';
	function doSubmit(){
		  submitForm("CompRepaWeixin","Save",true,"","beforeSubmit","afterSubmit",false,true);
	}
	function init(){
        intValue();
 
	}
	
function intValue(){


    var khname = '<%=(String)request.getAttribute("khname")%>';
    var khaddr = '<%=(String)request.getAttribute("khaddr")%>'; 
     var handtel = '<%=(String)request.getAttribute("handtel")%>';  
     var lxr = '<%=(String)request.getAttribute("lxr")%>';  
      if(khname!='null')document.all.khname.value =khname;
     if(khaddr!='null')document.all.khaddr.value =khaddr;
     if(lxr!='null')document.all.lxr.value =lxr;
     if(handtel!='null')document.all.handtel.value =handtel;     
 
//(!exp && typeof(exp)!="undefined" && exp!=0)

}	
function beforeSubmit(){
document.all.initStep.value ="S0";


return true;

}
	
	
function afterSubmit(){
 

   refreshMsg();
    return true;
}
 
function refreshMsg(){

    var RepairType = '<%=(String)request.getAttribute("RepairType")%>';
    if(RepairType=='01')RepairName='电脑维修(电脑故障)';
    else    if(RepairType=='08')RepairName='软件维护(经济区软件、财务软件等)';
     else    if(RepairType=='09')RepairName='其他工作'; 
     
    var khname =document.all.khname.value;
    var khaddr =document.all.khaddr.value;
     var handtel =document.all.handtel.value;
     var lxr = document.all.lxr.value;
     var wxdh= document.all.wxdh.value;
     var gzMem=  document.all.gzMem.value;
      if(khname!='null')document.all.lxr.value ='';
     if(handtel!='null')document.all.khaddr.value ='';
     if(lxr!='null')document.all.lxr.value ='';
     if(gzMem!='null')document.all.gzMem.value ='';   


msg.innerHTML=
'<p  >业务类型：<span class="red">'+RepairName+'</span></p>'+
'<p  >客户名称：<strong>'+khname+'</strong></p>'+
'<p>客户地址:<span class="red">'+khaddr+'</span></p>'+
'<p>联系人：'+khname+'</p>'+
'<p>联系人手机：'+handtel+'</p>'+
'<p >故障描述：<span class="red">'+gzMem+'</span></p>'+
'<p >亲爱的用户，您的报修已经登记，报修单号：<span class="red">'+wxdh+'</span> ,客服会联系您并为您安排技术人员！谢谢！</p>';

}
 

	
	
</script>



</head>
 
<e:emobile  type="simple">
<e:head/>

<body class="activity-coupon-winning" style="" onLoad="init();">
<e:form action="CompRepaWeixin" name="CompRepaWeixin" id="CompRepaWeixin">
<e:hidden id="step"  name="step" ></e:hidden>
<e:hidden name="initStep" ></e:hidden>
<e:hidden name="wxdh" ></e:hidden>
<e:hidden name="RepairType" ></e:hidden>
<e:hidden name="weixinId" ></e:hidden>
<e:hidden name="weixinName" ></e:hidden>
 




			<div class="main">
				<div class="cover" id="Conponid">
			   	<img id="winaprize" src="images/诚心为您服务.jpg"></div>
			</div>

			<div class="content">	   
			
			
			<div id="zjl" style="" class="boxcontent boxwhite">
					<div class="box">
						<div class="title-red">任务信息：</div>
						<div  id="msg" class="Detail">
						    <input name="khname" class="px" id="khname" value="" type="text" placeholder="客户名称">
						     <input name="khaddr" class="px" id="khaddr" value="" type="text" placeholder="客户地址">
						     <input name="lxr" class="px" id="lxr" value="" type="text" placeholder="联系人">						     			     
						     <input name="handtel" class="px" id="handtel" value="" type="text" placeholder="联系手机">				
							<input name="gzMem" class="px" id=""gzMem"" value="" type="text" placeholder="故障描述：">
							</p>
							<p>
                           <br>
                           <br>

								<input class="pxbtn" name="提 交" id="save-btn" type="button"  onclick="doSubmit()" value="报修提交">
							</p>							
							<p>&nbsp;</p>
							<p>&nbsp;</p>
							<p>&nbsp; </p>
	
						</div>
					</div>

			</div>	
					<!--领到了优惠券end-->
			  </div>	
		
							



			</div>





	</e:form>

</body>

</e:emobile>

</html>
