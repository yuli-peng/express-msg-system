<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>�����Ϣ</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet />

</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
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
                        <td width="23%" height="22" align="center" valign="bottom"><strong>�����Ϣ</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="712" valign="top" bgcolor="#F3ECDA" class="newsline">
						
						
						
						 <form name="form1" id="form1" method="post" action="">
   ����:  �˵��ţ�<input name="yundanhao" type="text" id="yundanhao" style='border:solid 1px #000000; color:#666666' size="12" /> ������ͣ�<select name='kuaijianleixing' id='kuaijianleixing' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="�տ�">�տ�</option><option value="�ؿ�">�ؿ�</option></select>  Դ��ַ��<input name="yuandizhi" type="text" id="yuandizhi" style='border:solid 1px #000000; color:#666666' size="12" />  Ŀ�ĵأ�<input name="mudedi" type="text" id="mudedi" style='border:solid 1px #000000; color:#666666' size="12" />  �ռ���������<input name="shoujianrenxingming" type="text" id="shoujianrenxingming" style='border:solid 1px #000000; color:#666666' size="12" /> ��ǰ״̬��<select name='dangqianzhuangtai' id='dangqianzhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="δ����">δ����</option><option value="�ѷ���">�ѷ���</option></select>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="�л���ͼ"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kuaidixinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˵���</td>    <td bgcolor='#CCFFFF'>�������</td>    <td bgcolor='#CCFFFF'>Դ��ַ</td>    <td bgcolor='#CCFFFF'>Ŀ�ĵ�</td>    <td bgcolor='#CCFFFF'>�ռ�������</td>    <td bgcolor='#CCFFFF'>�ռ����ֻ�</td>    <td bgcolor='#CCFFFF'>�۸�</td>    <td bgcolor='#CCFFFF'>��ǰ״̬</td>        
    
    <td width="30" align="center" bgcolor="CCFFFF">��ϸ</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"kuaidixinxi"); 
    String url = "kuaidixinxilist.jsp?1=1"; 
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
    <td><%=map.get("yundanhao") %></td><td><%=map.get("kuaijianleixing") %></td><td><%=map.get("yuandizhi") %></td><td><%=map.get("mudedi") %></td><td><%=map.get("shoujianrenxingming") %></td><td><%=map.get("shoujianrenshouji") %></td><td><%=map.get("jiage") %></td><td><%=map.get("dangqianzhuangtai") %></td>
    
    <td width="30" align="center"> <a href="kuaidixinxidetail.jsp?id=<%=map.get("id")%>" >��ϸ</a></td>
  </tr>
  	<%
  }
   %>
</table><br>

<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }						
						  
						  
						  
						  
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
