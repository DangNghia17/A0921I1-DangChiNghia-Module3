<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 23/05/2022
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>convert monet</title>
</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd ;
%>

<h1>Rate : <%=rate%></h1>
<h1>Usd : <%=usd%></h1>
<h1>VNĐ : <%=vnd%></h1>
</body>
</html>
