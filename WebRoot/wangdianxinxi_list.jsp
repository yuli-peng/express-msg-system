<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��ţ�<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ���ƣ�<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ʡ�ݣ�<%=Info.getselect("shengfen","shixian","shengfen"," 1=1 ")%>  ���أ�<%=Info.getselect("shixian","shixian","shixian"," 1=1 ")%>  �ʱࣺ<input name="youbian" type="text" id="youbian" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='wangdianxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>���</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>ʡ��</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>��ַ</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>    <td bgcolor='#CCFFFF'>�绰</td>    <td bgcolor='#CCFFFF'>�ʱ�</td>    <td bgcolor='#CCFFFF'>����</td>        
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"wangdianxinxi"); 
    String url = "wangdianxinxi_list.jsp?1=1"; 
    String sql =  "select * from wangdianxinxi where 1=1";
	if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+request.getParameter("bianhao")+"%'";}if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}if(request.getParameter("shengfen")=="" ||request.getParameter("shengfen")==null ){}else{sql=sql+" and shengfen like '%"+request.getParameter("shengfen")+"%'";}if(request.getParameter("shixian")=="" ||request.getParameter("shixian")==null ){}else{sql=sql+" and shixian like '%"+request.getParameter("shixian")+"%'";}if(request.getParameter("youbian")=="" ||request.getParameter("youbian")==null ){}else{sql=sql+" and youbian like '%"+request.getParameter("youbian")+"%'";}
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
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="wangdianxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="wangdianxinxi_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="wangdianxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
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

