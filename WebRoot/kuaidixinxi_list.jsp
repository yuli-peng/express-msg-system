<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�����Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>���п����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �˵��ţ�<input name="yundanhao" type="text" id="yundanhao" style='border:solid 1px #000000; color:#666666' size="12" /> ������ͣ�<select name='kuaijianleixing' id='kuaijianleixing' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="�տ�">�տ�</option><option value="�ؿ�">�ؿ�</option></select>  Դ��ַ��<input name="yuandizhi" type="text" id="yuandizhi" style='border:solid 1px #000000; color:#666666' size="12" />  Ŀ�ĵأ�<input name="mudedi" type="text" id="mudedi" style='border:solid 1px #000000; color:#666666' size="12" />  �ռ���������<input name="shoujianrenxingming" type="text" id="shoujianrenxingming" style='border:solid 1px #000000; color:#666666' size="12" /> ��ǰ״̬��<select name='dangqianzhuangtai' id='dangqianzhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="δ����">δ����</option><option value="�ѷ���">�ѷ���</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kuaidixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˵���</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>Դ��ַ</td>    <td bgcolor='#CCFFFF'>Ŀ�ĵ�</td>    <td bgcolor='#CCFFFF'>�ռ�������</td>    <td bgcolor='#CCFFFF'>�ռ����ֻ�</td>    <td bgcolor='#CCFFFF'>�۸�</td>    <td bgcolor='#CCFFFF'>��ǰ״̬</td>        
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
    <td width="60" align="center"><a href="kuaidixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="kuaidixinxi_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="kuaidixinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
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

