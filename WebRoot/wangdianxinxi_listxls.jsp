<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=wangdianxinxi.xls");
%>
<html>
  <head>
    <title>网点信息</title>
  </head>

  <body >
  <p>已有网点信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>    <td bgcolor='#CCFFFF'>名称</td>    <td bgcolor='#CCFFFF'>省份</td>    <td bgcolor='#CCFFFF'>市县</td>    <td bgcolor='#CCFFFF'>地址</td>    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>    <td bgcolor='#CCFFFF'>电话</td>    <td bgcolor='#CCFFFF'>邮编</td>    <td bgcolor='#CCFFFF'>传真</td>        
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "wangdianxinxi_list.jsp?1=1"; 
    String sql =  "select * from wangdianxinxi where 1=1";
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
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("mingcheng") %></td>    <td><%=map.get("shengfen") %></td>    <td><%=map.get("shixian") %></td>    <td><%=map.get("dizhi") %></td>    <td width='90'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("dianhua") %></td>    <td><%=map.get("youbian") %></td>    <td><%=map.get("chuanzhen") %></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

