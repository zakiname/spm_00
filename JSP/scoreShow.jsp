<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>"教育部-IBM精品课程建设项目"软件项目管理课程</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/script.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/cufon-yui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/arial.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/cuf_run.js"></script>
<script>
	$(document).ready(function(){	
  			$(".main .main_resize .menu_nav li").removeClass("active");
  			$(".main .main_resize .sidebar .gadget .sb_menu li").removeClass("active");
    		$(".main .main_resize .menu_nav li#score").addClass("active");
  		
	});
</script>
<!-- CuFon ends -->
</head>
<body>
<div class="main">
  <div class="main_resize">
      
      <jsp:include page="top.jsp"/>
      
  
    <div class="content">
      <div class="content_bg">
        <div class="mainbar">
          <div class="article">
            <div class="clr"></div>
            <table width="600" cellspacing="0" cellpadding="0" border="0" align="center">
     	<tbody>
     	  <tr>
     	    <td width="100%" ><font size="5">学生成绩查看</font><br><br> 
     	    <div class="pagenavi">

</div>
           <%     Connection conn=null;
       Statement  stmt=null;
       ResultSet  rs=null;
       try
       {
    	   Class.forName("com.mysql.jdbc.Driver").newInstance();
       }
       catch(Exception e){out.print(e);}
       try
       {
    	   int i=0;
    	   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/SPM","root","admin");
    	   stmt = conn.createStatement();
           rs=stmt.executeQuery("select * from score ");
             out.print("<table border=2>");
             out.print("<tr>");
             out.print("<td width=50>"+"<center>编号</center>");
             out.print("<th width=100>"+"<center>学号</center>");
             out.print("<th width=100>"+"<center>姓名</center>");
             out.print("<td width=100>"+"<center>班级</center>");
             out.print("<td width=100>"+"<center>平时成绩</center>");
             out.print("<td width=100>"+"<center>期中成绩</center>");
             out.print("<td width=100>"+"<center>期末成绩</center>");
             out.print("<td width=100>"+"<center>实验成绩</center>");
             out.print("<td width=100>"+"<center>总成绩</center>");
             
             out.print("</tr>");
         while(rs.next())
        {
        	 i++;
             out.print("<tr>");
             out.print("<td><center>"+  i  +"</center></td>");
             out.print("<td><center>"+rs.getString(1)+"</center></td>");
             out.print("<td><center>"+rs.getString(2)+"</center></td>");
             out.print("<td><center>"+rs.getString(3)+"</center></td>");
             out.print("<td><center>"+rs.getString(4)+"</center></td>");
             out.print("<td><center>"+rs.getString(5)+"</center></td>");
             out.print("<td><center>"+rs.getString(6)+"</center></td>");
             out.print("<td><center>"+rs.getString(7)+"</center></td>");
             out.print("<td><center>"+rs.getString(8)+"</center></td>");
             out.print("</tr>"); 
       }
         out.print("</table>");
          conn.close();
   }
     catch(Exception e1)
     {
       out.print(e1);
     }
 %>
			 
            </td></tr></tbody></table>
            
            <div class="clr"></div>
          </div>
        </div>
<jsp:include page="leftMenu4.jsp"/>
      </div>
    </div>
<jsp:include page="footer.jsp"/>
</div>
</div>
</body>
</html>








