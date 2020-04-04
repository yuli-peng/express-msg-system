<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>快递信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有快递信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  运单号：<input name="yundanhao" type="text" id="yundanhao" style='border:solid 1px #000000; color:#666666' size="12" /> 快件类型：<select name='kuaijianleixing' id='kuaijianleixing' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="普快">普快</option><option value="特快">特快</option></select>  源地址：<input name="yuandizhi" type="text" id="yuandizhi" style='border:solid 1px #000000; color:#666666' size="12" />  目的地：<input name="mudedi" type="text" id="mudedi" style='border:solid 1px #000000; color:#666666' size="12" />  收件人姓名：<input name="shoujianrenxingming" type="text" id="shoujianrenxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 当前状态：<select name='dangqianzhuangtai' id='dangqianzhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="未发货">未发货</option><option value="已发货">已发货</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kuaidixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>运单号</td>    <td bgcolor='#CCFFFF'>快件类型</td>    <td bgcolor='#CCFFFF'>源地址</td>    <td bgcolor='#CCFFFF'>目的地</td>    <td bgcolor='#CCFFFF'>收件人姓名</td>    <td bgcolor='#CCFFFF'>收件人手机</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>当前状态</td>        
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"kuaidixinxi"); 
    String url = "kuaidixinxi_list.jsp?1=1"; 
    String sql =  "select * from kuaidixinxi where 1=1";
	if(request.getParameter("yundanhao")=="" ||request.getParameter("yundanhao")==null ){}else{sql=sql+" and yundanhao like '%"+request.getParameter("yundanhao")+"%'";}if(request.getParameter("kuaijianleixing")=="" ||request.getParameter("kuaijianleixing")==null ){}else{sql=sql+" and kuaijianleixing like '%"+request.getParameter("kuaijianleixing")+"%'";}if(request.getParameter("yuandizhi")=="" ||request.getParameter("yuandizhi")==null ){}else{sql=sql+" and yuandizhi like '%"+request.getParameter("yuandizhi")+"%'";}if(request.getParameter("mudedi")=="" ||request.getParameter("mudedi")==null ){}else{sql=sql+" and mudedi like '%"+request.getParameter("mudedi")+"%'";}if(request.getParameter("shoujianrenxingming")=="" ||request.getParameter("shoujianrenxingming")==null ){}else{sql=sql+" and shoujianrenxingming like '%"+request.getParameter("shoujianrenxingming")+"%'";}if(request.getParameter("dangqianzhuangtai")=="" ||request.getParameter("dangqianzhuangtai")==null ){}else{sql=sql+" and dangqianzhuangtai like '%"+request.getParameter("dangqianzhuangtai")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yundanhao") %></td>    <td><%=map.get("kuaijianleixing") %></td>    <td><%=map.get("yuandizhi") %></td>    <td><%=map.get("mudedi") %></td>    <td><%=map.get("shoujianrenxingming") %></td>    <td><%=map.get("shoujianrenshouji") %></td>    <td><%=map.get("jiage") %></td>    <td><%=map.get("dangqianzhuangtai") %></td>        
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="kuaidixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="kuaidixinxi_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="kuaidixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

