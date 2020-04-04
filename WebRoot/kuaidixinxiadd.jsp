<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>快递信息</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet />

</head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
 //islbdq id=request.getParameter("id");
 //islbdq HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var kuaijianleixingobj = document.getElementById("kuaijianleixing"); if(kuaijianleixingobj.value==""){document.getElementById("clabelkuaijianleixing").innerHTML="&nbsp;&nbsp;<font color=red>请输入快件类型</font>";return false;}else{document.getElementById("clabelkuaijianleixing").innerHTML="  "; } 	var shoujianrenshoujiobj = document.getElementById("shoujianrenshouji"); if(shoujianrenshoujiobj.value!=""){ if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(shoujianrenshoujiobj.value)){document.getElementById("clabelshoujianrenshouji").innerHTML=""; }else{document.getElementById("clabelshoujianrenshouji").innerHTML="&nbsp;&nbsp;<font color=red>必需手机格式</font>"; return false;}}      
}
function gow()
{
	document.location.href="kuaidixinxiadd.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->

<body>

 
<table width="1014" height="1056" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td height="778"><table id="__01" width="1014" height="778" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="778" valign="top" bgcolor="#E7DFC8"><%@ include file="qtleft.jsp"%></td>
            <td valign="top" bgcolor="#E7DFC8"><table id="__01" width="778" height="778" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="233"><table id="__01" width="778" height="233" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="778" height="41" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23%" height="22" align="center" valign="bottom"><strong>快递信息</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="712" valign="top" bgcolor="#F3ECDA" class="newsline">
						
						
						
						
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
//youshenhe
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"kuaidixinxi",ext,true,false,""); 
%>
   <form  action="kuaidixinxiadd.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">运单号：</td><td><input name='yundanhao' type='text' id='yundanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>快件类型：</td><td><select name='kuaijianleixing' id='kuaijianleixing'><option value="普快">普快</option><option value="特快">特快</option></select>&nbsp;*<label id='clabelkuaijianleixing' /></td></tr>		<tr><td  width="200">源地址：</td><td><input name='yuandizhi' type='text' id='yuandizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">目的地：</td><td><input name='mudedi' type='text' id='mudedi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">收件人姓名：</td><td><input name='shoujianrenxingming' type='text' id='shoujianrenxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">收件人手机：</td><td><input name='shoujianrenshouji' type='text' id='shoujianrenshouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshoujianrenshouji' />必需手机格式</td></tr>		<tr><td  width="200">价格：</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>当前状态：</td><td><select name='dangqianzhuangtai' id='dangqianzhuangtai'><option value="未发货">未发货</option><option value="已发货">已发货</option></select></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						  
						  
						  
						  
					</td>
                        <td width="34" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="12"><img src="qtimages/1_02_02_02_03.gif" width="778" height="12" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
</body>
</html>
<!--suxilxatxihuxan-->
