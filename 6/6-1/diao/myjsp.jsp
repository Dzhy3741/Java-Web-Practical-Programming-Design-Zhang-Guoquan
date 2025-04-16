<%@ page import="com.ChartGraphics" %> 
<%@ page import="com.GetData" %> 
<jsp:useBean id="cg" class="com.ChartGraphics"/> 
<jsp:useBean id="gd" class="com.GetData"/> 
<%! 
int height[]=new int[5]; 
%> 
<% 
height=gd.getHightArray(); 
cg.graphicsGeneration(height[0],height[1],height[2],height[3],height[4]); 
%> 
<html>
<body> 
<img src="chat.jpg"></img> 
</body> 
</html>

