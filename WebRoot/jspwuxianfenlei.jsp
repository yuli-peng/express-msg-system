


<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>����</title>
  </head>
  <script language="javascript">
function tjzl(nfid,nfname)
{
	document.getElementById("xgzxl").style.display="none";
	document.getElementById("zilei").style.display="";
    document.getElementById("fid").value=nfid;
	document.getElementById("fname").value=nfname;
}
function xglb(nfid,nfname)
{
	document.getElementById("xgzxl").style.display="";
	//document.getElementById("zilei").style.display="none";
    document.getElementById("fid2").value=nfid;
	document.getElementById("leibie2").value=nfname;
}
function check()
{
	if(document.getElementById("leibie").value.trim()=="")
	{
		alert("���������");
		document.getElementById("leibie").focus();
		return false;
	}
}
</script>
  <body>
  <%
  new CommDAO().delete(request,"hsgwuxianfenlei"); 
  if (request.getParameter("addnew")!=null)
  {

	String fid=request.getParameter("fid");
	String leibie=request.getParameter("leibie");
	String sql="insert into hsgwuxianfenlei(fid,fname) values("+fid+",'"+leibie+"')";
	 new CommDAO().commOper(sql); 
	}
 if (request.getParameter("addnew2")!=null)
  {

	String fid2=request.getParameter("fid2");
	String leibie2=request.getParameter("leibie2");
	String sql2="update hsgwuxianfenlei set fname='"+leibie2+"' where id="+fid2;
	 new CommDAO().commOper(sql2); 
	}

  %>
    <%!
		public String getList(int parent_id,String nstrdis) throws java.io.IOException {
    	String temp = null;
		String strTree = "";
    	try {
	
									
		String sql = "select * from hsgwuxianfenlei where fid=" + parent_id +" order by id desc";
		
    	  for(HashMap map:new CommDAO().select(sql)){
    	String tree_id =(String)map.get("id");
			String tree_name = (String)map.get("fname");
			if(parent_id>=1)
			{				
			strTree +=nstrdis+ "<img src='images/ftv2lastnode.gif'   />"+tree_name ;
			}
			else
			{
				strTree +=tree_name;
			}
			strTree+="<img src='images/addnew.jpg' width='15' height='15' onclick=tjzl('" + tree_id + "','" + tree_name + "') style='cursor:pointer'   /> <img src='images/gai.jpg' width='15' height='15' onclick=xglb('" + tree_id + "','" + tree_name + "') style='cursor:pointer' /> <a href='jspwuxianfenlei.jsp?scid=" + tree_id + "' onclick=\"return confirm('ȷ��Ҫɾ����')\" ><img src='images/close.jpg' width='15' height='15'  border=0 /></a>";
			strTree+="<br>";
			strTree += this.getList(Integer.valueOf(tree_id),"<img src='images/ftv2vertline.gif'   />"+"&nbsp;&nbsp;&nbsp;"+nstrdis);
			}
    	}catch (Exception ex) {
    	ex.printStackTrace();
    	}
    	
    	return strTree;
    	}
    %>
    
    <p><% out.print(getList(0,"")); %></p>
	
	  <p>˵��:<img src='images/addnew.jpg' width='15' height='15'  />������� <img src='images/gai.jpg' width='15' height='15' />�޸����� <img src='images/close.jpg' width='15' height='15' border=0 > ɾ������</p>
   <form id="form1" name="form1" method="post" action="">
  <table width="639" border="1" id="zilei"  >
   
      <tr>
        <td width="73">������:</td>
        <td width="403">�����ϼ���
          <input name="fid" type="text" id="fid" style="width:25px; display:none" value="0" readonly="readonly" />
        <input name="fname" type="text" id="fname" style="width:80px; " value="��" readonly="readonly" />
        <input name="leibie" type="text" id="leibie" />
        <input name="addnew" type="hidden" id="addnew" value="1" /></td>
        <td width="148"><input type="submit" name="Submit2" value="������" onClick="return check();"  />
        <input type="reset" name="Submit22" value="����"></td>
      </tr> 
</table>
 </form>
  <br />
  <form id="form2" name="form2" method="post" action="">
  <table width="500" border="1" style="display:none" id="xgzxl">
      <tr>
        <td>�޸����:</td>
        <td><input name="fid2" type="text" id="fid2" style="width:25px; display:none" value="0" readonly="readonly" />
            <input name="leibie2" type="text" id="leibie2" />
            <input name="addnew2" type="hidden" id="addnew2" value="1" /></td>
        <td><input type="submit" name="Submit" value="�޸����" /></td>
      </tr>
  </table>
  </form>
  </body>
</html>