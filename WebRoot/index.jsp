<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>快递公司管理网站</title>
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>

</head>

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
                <td><table id="__01" width="778" height="246" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="266" height="246" align="right" valign="middle" bgcolor="#E7DFC8">
					  <%=new CommDAO().DynamicImage("",6,252,206) %> </td>
                    <td><table id="__01" width="512" height="246" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="512" height="42" background="qtimages/1_02_02_01_02_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="26%" align="center" valign="middle"><strong><a href="news.jsp?lb=业务介绍">业务介绍</a></strong></td>
                            <td width="74%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><table id="__01" width="512" height="191" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><img src="qtimages/1_02_02_01_02_02_01.gif" width="12" height="191" alt=""></td>
                            <td width="466" height="191" valign="top" class="newsline"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0">
                              <tbody>
                                <%
										
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='业务介绍' order by id desc ",1,7)){
	
     %>
                                <tr>
                                  <td width="4%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="77%" height="25"> <a href="gg_detail.jsp?id=<%=map.get("id") %>"target="_self" title="<%=map.get("biaoti") %>"><%=Info.ensubStr(map.get("biaoti"),26)%></a> </td>
                                  <td width="19%" height="25"><SPAN style="FONT-SIZE: 9pt; COLOR: #b5a073; FONT-FAMILY: 宋体">[<%=map.get("addtime").toString().substring(0,10) %>]</SPAN></td>
                                </tr>
                                <%
							}
							%>
                              </tbody>
                            </table></td>
                            <td><img src="qtimages/1_02_02_01_02_02_03.gif" width="34" height="191" alt=""></td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_01_02_03.gif" width="512" height="13" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="233"><table id="__01" width="778" height="233" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="778" height="41" background="qtimages/1_02_02_02_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="23%" height="22" align="center" valign="bottom"><strong>网点风彩</strong></td>
                        <td width="77%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                        <td width="727" height="180" bgcolor="#F3ECDA">
						
						<div style="margin:0px;">
                  <div id="demo"  style="float:left; overflow:hidden">
                    <div id="indemo">
                      <div id="demo1">
                        <div id="dbgdtp">
				<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                      <%
        for(HashMap m:new CommDAO().select("select * from wangdianxinxi order by id desc",1,8)){
         %>
	    <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0" id="product">
	        <tr align="center">
	          <td>
              <div  style=" margin-left:3px; width:150px; height:120px; border:1px #CCC solid; padding:2px; background:#FFF">
              <a href="wangdianxinxidetail.jsp?id=<%=m.get("id") %>" target=""><img src="<%=m.get("zhaopian") %>" border="0" title="<%=m.get("mingcheng") %>"  height="120" width="150"/></a></div></td>
	        </tr>
	        <tr align="center">
	          <td ><a href="" 
	          			target="">
	          		<%=m.get("mingcheng") %>
	          	</a></td>
	        </tr>
	       
       
	      </table></td>
          <%} %>
                  </tr>
                </table>
				
				 </div>
                      </div>
                      <div id="demo2"></div>
                    </div>
                  </div>
                  
                  
                  
                  
	       <script language="javascript"> 
			var speed=20;
			var tab=document.getElementById("demo"); 
			var tab1=document.getElementById("demo1"); 
			var tab2=document.getElementById("demo2"); 
			tab2.innerHTML=tab1.innerHTML; 
			function Marquee(){ 
			if(tab2.offsetWidth-tab.scrollLeft<=0) 
			tab.scrollLeft-=tab1.offsetWidth 
			else{ 
			tab.scrollLeft++; 
			} 
			} 
			var MyMar=setInterval(Marquee,speed); 
			tab.onmouseover=function() {clearInterval(MyMar)}; 
			tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)}; 
			</script>
       
                  <style type="text/css">
<!--
#dbgdtp {float:left;  margin:0px; }
#demo {overflow:hidden; width: 700px; }
#demo1 {float: left; }
#demo2 {float: left; }
#indemo {float: left; width: 1500%; }
-->
</style>
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
              <tr>
                <td height="293"><table id="__01" width="778" height="293" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="293"><table id="__01" width="377" height="293" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="377" height="44" background="qtimages/1_02_02_03_01_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="33%" align="center" valign="middle"><strong><a href="news.jsp?lb=站内新闻">站内新闻</a></strong></td>
                            <td width="67%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="239"><table id="__01" width="377" height="239" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="16" background="qtimages/1_02_02_03_01_02_01.gif">&nbsp;</td>
                            <td width="349" height="239" valign="top" bgcolor="#F3ECDA" class="newsline"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0">
                              <tbody><%
                                for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='站内新闻' order by id desc",1,9)){
								%>
                                <tr>
                                  <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="94%" height="25"> <a href="gg_detail.jsp?id=<%=map.get("id") %>" target="_self" title="<%=map.get("biaoti") %>"><%=Info.ensubStr(map.get("biaoti"),21)%></a></td>
                                  </tr>
                                <%
							}
							%>
                              </tbody>
                            </table></td>
                            <td width="12" background="qtimages/1_02_02_03_01_02_03.gif">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_03_01_03.gif" width="377" height="10" alt=""></td>
                      </tr>
                    </table></td>
                    <td><table id="__01" width="401" height="289" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="401" height="43" background="qtimages/1_02_02_03_02_01.gif"><table width="100%" height="17" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="33%" align="center" valign="middle"><strong><a href="news.jsp?lb=发货须知">发货须知</a></strong></td>
                            <td width="67%">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td height="234"><table id="__01" width="401" height="234" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="10" background="qtimages/1_02_02_03_02_02_01.gif">&nbsp;</td>
                            <td width="360" height="239" valign="top" bgcolor="#F3ECDA" class="newsline"><table  cellspacing="0" cellpadding="0" width="98%" 
                  align="center" border="0">
                              <tbody>
                               <%
                                for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='发货须知' order by id desc",1,9)){
								%>
                                <tr>
                                  <td width="6%" height="25" align="center" ><img src="qtimages/1.jpg" ></td>
                                  <td width="94%" height="25"><a href="gg_detail.jsp?id=<%=map.get("id") %>" target="_self" title="<%=map.get("biaoti") %>"><%=Info.ensubStr(map.get("biaoti"),21)%></a></td>
                                  </tr>
                                <%
							}
							%>
                              </tbody>
                            </table></td>
                            <td width="31" background="qtimages/1_02_02_03_02_02_03.gif">&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td><img src="qtimages/1_02_02_03_02_03.gif" width="401" height="11" alt=""></td>
                      </tr>
                    </table></td>
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
</body>
</html>