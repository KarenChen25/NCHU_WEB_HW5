<%@page contentType="text/html;charset=utf-8"%>

<HTML>
<BODY bgcolor="#FFFFFF">
<H2 ALIGN=CENTER>履歷表<HR></H2>
<CENTER>
	<table style="border: 1px solid black;" border='1px'><tr><td>您的姓名是:</td><td> <%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	out.print(name);
	%></td></tr>

<tr><td>您的興趣是:</td><td>
<% request.setCharacterEncoding("utf-8");
String[] hobby=request.getParameterValues("hobby") ;
if (hobby != null) {
for(int i=0;i<hobby.length;i++){
	out.print(hobby[i]);
	%><br><% 
}
}
else
out.println("");
   %></td></tr>	

 <tr><td>您的技能是:</td><td>
<% request.setCharacterEncoding("utf-8");
String[] skill=request.getParameterValues("skill") ;
 if (skill != null) {
for(int r=0;r<skill.length;r++){
	out.print(skill[r]);
	%><br><% 
}
}
else
out.println("");
   %></td></tr>	
 
 <tr><td>您的程式經歷是:</td><td>
<% request.setCharacterEncoding("utf-8");
String[] coding=request.getParameterValues("coding") ;
 if (coding != null) {
for(int r=0;r<coding.length;r++){
	out.print(coding[r]);
	%><br><% 
}
}
else
out.println("");
   %></td></tr> 
   
<tr><td>您的性別是:</td><td><%
	request.setCharacterEncoding("utf-8");
	
	String sex=request.getParameter("sex");
	 if (skill != null) {
	 out.print(sex);
	}
else
out.println("");
	%></td></tr>

<tr><td>您的生日是:</td><td>
<% request.setCharacterEncoding("utf-8");
String[] birth=request.getParameterValues("birth") ;
if (birth != null) {
for(int i=0;i<birth.length;i++){
	out.print(birth[i]);
	%></td></tr><% 
}
}
else
out.println("未選擇");
   %>	
	
<tr><td>您的自傳是:</td><td><%
	request.setCharacterEncoding("utf-8");
	String res=request.getParameter("res");
	if (res != null) {
	out.print(res);

	}
else
out.println("未選擇");	%>
	</td></tr></table>
</CENTER>
</BODY>
</HTML>



