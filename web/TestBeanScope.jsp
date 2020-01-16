<%-- TestBeanScope.jsp --%>
<%@page import="domain.Count" %>
<jsp:useBean id="count" scope="application" class="domain.Count"></jsp:useBean>
<html>
    <head>
        <title>TestBeanScope</title>
    </head>
    <body>
        <h3>Testing Bean Scope in JSP (Application)</h3>
        <% count.increaseCount(); %>
        You are visitor number <%= count.getCount() %><br />
        From host: <%= request.getRemoteHost() %>
        and session: <%= session.getId() %>
    </body>
</html>
