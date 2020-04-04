<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 

 <table id="__01" width="1014" height="193" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1014" height="104" background="qtimages/1_01_01.gif"><table width="54%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 25pt; margin-top:5pt">
                    <div align="center" >快递公司管理网站</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1014" height="48" background="qtimages/1_01_02.gif"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
              <tr>
                <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">首页</font></a></strong></td>
				<td align="center"><strong><a href="news.jsp?lb=业务介绍"><font  class="STYLE1">业务介绍</font></a></strong></td>
               <!-- <td align="center"><strong><a href="news.jsp?lb=站内新闻"><font  class="STYLE1">站内新闻</font></a></strong></td>
                <td align="center"><strong><a href="dx_detail.jsp?lb=系统简介"><font  class="STYLE1">系统简介</font></a></strong></td>
                <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">在线留言</font></a></strong></td>-->
                <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">用户注册</font></a></strong></td>
                <td align="center"><strong><a href="wangdianxinxilist.jsp"><font  class="STYLE1">网点查询</font></a></strong></td>
                <td align="center"><strong><a href="kuaidixinxilist.jsp"><font  class="STYLE1">快递追踪</font></a></strong></td>
                
                <td align="center"><strong><a href="login.jsp"><font  class="STYLE1">后台</font></a></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1014" height="41" background="qtimages/1_01_03.gif"><TABLE width="80%" 
border=0 align="center" cellPadding=0 cellSpacing=0>
              <TBODY>
                <TR>
                  <TD width="3%" height="17" align=center vAlign=center class="h2">&nbsp;</TD>
                  <TD width="97%" align=right vAlign=bottom><marquee behavior=alternate width=100% scrollAmount=3 class="STYLE6">
                    欢迎登陆我站，希望能给你带来好心情，其他话语请您自己修改，谢谢合作！（注：此处文字您可以在qttop.jsp源码中自己修改）
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>