<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



			

<table id="__01" width="236" height="764" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td height="225"><table id="__01" width="236" height="225" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="236" height="40" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="69%" height="22" align="center" valign="bottom"><strong>系统公告</strong></td>
                            <td width="31%">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td><table id="__01" width="236" height="175" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                            <td width="190" height="175"><marquee border="0" direction="up" height="170" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50">
                              <TABLE width="100%" height="98%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                                <TBODY>
                                  <TR>
                                    <TD><P><% HashMap m1 = new CommDAO().getmaps("leibie","系统公告","dx");out.print(Info.ensubStr(m1.get("content"),185)); %></P></TD>
                                  </TR>
                                </TBODY>
                              </TABLE>
                            </marquee></td>
                            <td width="16" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td><img src="qtimages/1_02_01_01_03.gif" width="236" height="10" alt=""></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="186"><table id="__01" width="236" height="186" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="236" height="40" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="69%" height="22" align="center" valign="bottom"><strong>用户登陆</strong></td>
                            <td width="31%">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="136"><table id="__01" width="236" height="136" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                            <td width="190" height="136"> <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 <form action="jspmkdgsglwzpjy52A9?ac=login&a=a" method="post" name="f11" style="display: inline">
							                           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">

                                  <tr>
                                    <td width="9" height="28">&nbsp;</td>
                                    <td width="54" height="28">用户名:</td>
                                    <td height="28" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr>
                                    <td height="28">&nbsp;</td>
                                    <td height="28">密码:</td>
                                    <td height="28" colspan="2"><input name="pwd1" type="password" id="pwd1"  style="width:100px; height:20px; border:solid 1px #000000; color:#666666" /></td>
                                  </tr>
                                  <tr style="display:none">
                                    <td height="28">&nbsp;</td>
                                    <td height="28">权限:</td>
                                    <td height="28" colspan="2"><select name="cx" id="cx" style="width:100px; height:20px; border:solid 1px #000000; color:#666666" >
										<option value="注册用户">注册用户</option>
                                    </select></td>
                                  </tr>
                                  <tr >
                                    <td height="28">&nbsp;</td>
                                    <td height="28">验证码</td>
                                    <td width="52" height="28"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" /></td>
                                    <td width="96"><img src="ma.jsp" id="yzm" onClick="ma();" style="cursor:pointer"></img></td>
                                  </tr>
								  <script type="text/javascript">
           function ma()
           {
           var a = document.getElementById("yzm");
           var myDate=new Date()
           a.src="ma.jsp?d="+myDate;
           }
           
           
           </script>     
                                  <tr>
                                    <td height="38" align="center">&nbsp;</td>
                                    <td height="38" colspan="3" align="center"><input type="submit" name="Submit" value="登陆" class="hsgbutton" onclick="return checklog();" />
                                        <input type="reset" name="Submit2" value="重置" class="hsgbutton" /></td>
                                  </tr>
                              
                              </table>
							    </form>
							  <%}else{ %>
					<table width="90%" height="82%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td width="31%" height="30">用户名</td>
                                  <td width="69%" height="30"><%=request.getSession().getAttribute("username")%> </td>
                                </tr>
                                <tr>
                                  <td height="30">权限</td>
                                  <td height="30"><%=request.getSession().getAttribute("cx")%> </td>
                                </tr>
                                <tr>
                                  <td height="30" colspan="2" align="center"><input type="button" name="Submit3" value="退出" onClick="javascript:location.href='logout.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                      <input type="button" name="Submit32" value="个人后台" onClick="javascript:location.href='main.jsp';" style=" height:19px; border:solid 1px #000000; color:#666666">
                                  </td>
                                </tr>
                              </table>
							     <%} %></td>
                            <td width="16" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="10"><img src="qtimages/1_02_01_01_03.gif" width="236" height="10" alt=""></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="167"><table id="__01" width="236" height="167" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="236" height="40" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="69%" height="22" align="center" valign="bottom"><strong>站内搜索</strong></td>
                            <td width="31%">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="117"><table id="__01" width="236" height="117" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                            <td width="190" height="117"><table width="100%" height="17%" border="0" cellpadding="0" cellspacing="0">
                              <form action="news.jsp" method="post" name="formsearch" id="formsearch" >
                                <tr>
                                  <td width="19%" height="30">标题</td>
                                  <td width="81%" height="30"><input name="keyword" type="text" id="keyword" size="12" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                                <tr>
                                  <td height="30">类别</td>
                                  <td height="30"><select name="lb" style=" height:19px; border:solid 1px #000000; color:#666666">
                                       <%
						    for(HashMap m:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=m.get("ss") %>"><%=m.get("ss") %></option>
							<%
							}
						   %>
                                    </select>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="30">&nbsp;</td>
                                  <td height="30"><input type="submit" name="Submit4" value="提交" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                                </tr>
                              </form>
                            </table></td>
                            <td width="16" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="10"><img src="qtimages/1_02_01_01_03.gif" width="236" height="10" alt=""></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table id="__01" width="236" height="186" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="236" height="40" background="qtimages/1_02_01_01_01.gif"><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="69%" height="22" align="center" valign="bottom"><strong>友情连接</strong></td>
                            <td width="31%">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="136"><table id="__01" width="236" height="136" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="30" background="qtimages/1_02_01_01_02_01.gif">&nbsp;</td>
                            <td width="190" height="136"><table width="92%" border="0" align="center" cellpadding="0" cellspacing="0">
                              <%
    for(HashMap map:new CommDAO().select("select * from youqinglianjie order by id desc",1,8)){
     %>
                                  <tr>
                                    <td width="12%" height="25" align="center"><span class="STYLE2"><img src="qtimages/1.jpg" /></span></td>
                                    <td width="20%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhanmingcheng") %></a></td>
                                    <td width="68%" height="25"><a href="<%=map.get("wangzhi") %>" target="_blank" ><%=map.get("wangzhi") %></a></td>
                                  </tr>
								  <%
								  }
								  %>
                            </table></td>
                            <td width="16" background="qtimages/1_02_01_01_02_03.gif">&nbsp;</td>
                          </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td height="10"><img src="qtimages/1_02_01_01_03.gif" width="236" height="10" alt=""></td>
                    </tr>
                </table></td>
              </tr>
            </table>