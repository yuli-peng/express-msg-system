<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=kuaidixinxi.xls");
%>
<html>
  <head>
    <title>�����Ϣ</title>
  </head>

  <body >
  <p>���п����Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˵���</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>Դ��ַ</td>    <td bgcolor='#CCFFFF'>Ŀ�ĵ�</td>    <td bgcolor='#CCFFFF'>�ռ�������</td>    <td bgcolor='#CCFFFF'>�ռ����ֻ�</td>    <td bgcolor='#CCFFFF'>�۸�</td>    <td bgcolor='#CCFFFF'>��ǰ״̬</td>        
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "kuaidixinxi_list.jsp?1=1"; 
    String sql =  "select * from kuaidixinxi where 1=1";
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
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

