<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>�����Ϣ</title>
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
	document.location.href="kuaidixinxi_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"kuaidixinxi",ext,true,false,""); 
%>

  <body >
 <form  action="kuaidixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��ӿ����Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�˵��ţ�</td><td><input name='yundanhao' type='text' id='yundanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>������ͣ�</td><td><select name='kuaijianleixing' id='kuaijianleixing'><option value="�տ�">�տ�</option><option value="�ؿ�">�ؿ�</option></select>&nbsp;*<label id='clabelkuaijianleixing' /></td></tr>		<tr><td  width="200">Դ��ַ��</td><td><input name='yuandizhi' type='text' id='yuandizhi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">Ŀ�ĵأ�</td><td><input name='mudedi' type='text' id='mudedi' value='' onblur='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">�ռ���������</td><td><input name='shoujianrenxingming' type='text' id='shoujianrenxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">�ռ����ֻ���</td><td><input name='shoujianrenshouji' type='text' id='shoujianrenshouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshoujianrenshouji' />�����ֻ���ʽ</td></tr>		<tr><td  width="200">�۸�</td><td><input name='jiage' type='text' id='jiage' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td>��ǰ״̬��</td><td><select name='dangqianzhuangtai' id='dangqianzhuangtai'><option value="δ����">δ����</option><option value="�ѷ���">�ѷ���</option></select></td></tr>		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
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
 
	var kuaijianleixingobj = document.getElementById("kuaijianleixing"); if(kuaijianleixingobj.value==""){document.getElementById("clabelkuaijianleixing").innerHTML="&nbsp;&nbsp;<font color=red>������������</font>";return false;}else{document.getElementById("clabelkuaijianleixing").innerHTML="  "; } 	var shoujianrenshoujiobj = document.getElementById("shoujianrenshouji"); if(shoujianrenshoujiobj.value!=""){ if(/^1[3|4|5|8][0-9]\d{4,8}$/.test(shoujianrenshoujiobj.value)){document.getElementById("clabelshoujianrenshouji").innerHTML=""; }else{document.getElementById("clabelshoujianrenshouji").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


