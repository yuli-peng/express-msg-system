<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>网点信息</title>
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
                        <td width="23%" height="22" align="center" valign="bottom"><strong>网点信息</strong></td>
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
   搜索:  编号：<input name="bianhao" type="text" id="bianhao" style='border:solid 1px #000000; color:#666666' size="12" />  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  省份：<%=Info.getselect("shengfen","shixian","shengfen"," 1=1 ")%>  市县：<%=Info.getselect("shixian","shixian","shixian"," 1=1 ")%>  邮编：<input name="youbian" type="text" id="youbian" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='wangdianxinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"wangdianxinxi"); 
    String url = "wangdianxinxilisttp.jsp?1=1"; 
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
                            <td align="center"><table width="150" height="153" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="126" align="center"><a href="wangdianxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("zhaopian")%>" width="109" height="126" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("mingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
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
