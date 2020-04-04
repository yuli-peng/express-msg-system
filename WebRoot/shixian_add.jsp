<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>市县</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shixian_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
//youjqjiu if(request.getParameter("f")!=null){
//qiuji
//youshenhe
//youzhifu
//jitihuan
//youjqjiu }
new CommDAO().insert(request,response,"shixian",ext,true,false,""); 
%>

  <body >
 <form  action="shixian_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加市县:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>省份：</td><td><%=Info.getselect("shengfen","shengfen","shengfen")%>&nbsp;*<label id='clabelshengfen' /></td></tr>		<tr><td  width="200">市县：</td><td><input name='shixian' type='text' id='shixian' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshixian' /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shengfenobj = document.getElementById("shengfen"); if(shengfenobj.value==""){document.getElementById("clabelshengfen").innerHTML="&nbsp;&nbsp;<font color=red>请输入省份</font>";return false;}else{document.getElementById("clabelshengfen").innerHTML="  "; } 	var shixianobj = document.getElementById("shixian"); if(shixianobj.value==""){document.getElementById("clabelshixian").innerHTML="&nbsp;&nbsp;<font color=red>请输入市县</font>";return false;}else{document.getElementById("clabelshixian").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


