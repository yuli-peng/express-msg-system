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
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 

 <table id="__01" width="1014" height="193" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1014" height="104" background="qtimages/1_01_01.gif"><table width="54%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:����; color:#FFFFFF; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 25pt; margin-top:5pt">
                    <div align="center" >��ݹ�˾������վ</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1014" height="48" background="qtimages/1_01_02.gif"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
              <tr>
                <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">��ҳ</font></a></strong></td>
				<td align="center"><strong><a href="news.jsp?lb=ҵ�����"><font  class="STYLE1">ҵ�����</font></a></strong></td>
               <!-- <td align="center"><strong><a href="news.jsp?lb=վ������"><font  class="STYLE1">վ������</font></a></strong></td>
                <td align="center"><strong><a href="dx_detail.jsp?lb=ϵͳ���"><font  class="STYLE1">ϵͳ���</font></a></strong></td>
                <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">��������</font></a></strong></td>-->
                <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">�û�ע��</font></a></strong></td>
                <td align="center"><strong><a href="wangdianxinxilist.jsp"><font  class="STYLE1">�����ѯ</font></a></strong></td>
                <td align="center"><strong><a href="kuaidixinxilist.jsp"><font  class="STYLE1">���׷��</font></a></strong></td>
                
                <td align="center"><strong><a href="login.jsp"><font  class="STYLE1">��̨</font></a></strong></td>
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
                    ��ӭ��½��վ��ϣ���ܸ�����������飬�������������Լ��޸ģ�лл��������ע���˴�������������qttop.jspԴ�����Լ��޸ģ�
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>