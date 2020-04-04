<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>快递信息</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"kuaidixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"kuaidixinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="kuaidixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改快递信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>运单号：</td><td><input name='yundanhao' type='text' id='yundanhao' value='<%= mmm.get("yundanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>快件类型：</td><td><select name='kuaijianleixing' id='kuaijianleixing'><option value="普快">普快</option><option value="特快">特快</option></select></td></tr><script language="javascript">document.form1.kuaijianleixing.value='<%=mmm.get("kuaijianleixing")%>';</script>     <tr><td>源地址：</td><td><input name='yuandizhi' type='text' id='yuandizhi' size='50' value='<%=mmm.get("yuandizhi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>目的地：</td><td><input name='mudedi' type='text' id='mudedi' size='50' value='<%=mmm.get("mudedi")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>收件人姓名：</td><td><input name='shoujianrenxingming' type='text' id='shoujianrenxingming' value='<%= mmm.get("shoujianrenxingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>收件人手机：</td><td><input name='shoujianrenshouji' type='text' id='shoujianrenshouji' value='<%= mmm.get("shoujianrenshouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>当前状态：</td><td><select name='dangqianzhuangtai' id='dangqianzhuangtai'><option value="未发货">未发货</option><option value="已发货">已发货</option></select></td></tr><script language="javascript">document.form1.dangqianzhuangtai.value='<%=mmm.get("dangqianzhuangtai")%>';</script>     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


