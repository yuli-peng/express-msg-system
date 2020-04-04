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
						
						
						
						 <form name="form1" id="form1" method="post" action="">
   搜索:  运单号：<input name="yundanhao" type="text" id="yundanhao" style='border:solid 1px #000000; color:#666666' size="12" /> 快件类型：<select name='kuaijianleixing' id='kuaijianleixing' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="普快">普快</option><option value="特快">特快</option></select>  源地址：<input name="yuandizhi" type="text" id="yuandizhi" style='border:solid 1px #000000; color:#666666' size="12" />  目的地：<input name="mudedi" type="text" id="mudedi" style='border:solid 1px #000000; color:#666666' size="12" />  收件人姓名：<input name="shoujianrenxingming" type="text" id="shoujianrenxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 当前状态：<select name='dangqianzhuangtai' id='dangqianzhuangtai' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="未发货">未发货</option><option value="已发货">已发货</option></select>
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='kuaidixinxilisttp.jsp';" />
</form>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>运单号</td>    <td bgcolor='#CCFFFF'>快件类型</td>    <td bgcolor='#CCFFFF'>源地址</td>    <td bgcolor='#CCFFFF'>目的地</td>    <td bgcolor='#CCFFFF'>收件人姓名</td>    <td bgcolor='#CCFFFF'>收件人手机</td>    <td bgcolor='#CCFFFF'>价格</td>    <td bgcolor='#CCFFFF'>当前状态</td>        
    
    <td width="30" align="center" bgcolor="CCFFFF">详细</td>
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
    
    <td width="30" align="center"> <a href="kuaidixinxidetail.jsp?id=<%=map.get("id")%>" >详细</a></td>
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
