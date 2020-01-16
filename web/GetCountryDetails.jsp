<%-- GetCountryDetails.jsp --%>
<%@page import="domain.Country" %>
<jsp:useBean id="countryId"
             class="domain.Country" scope="session"></jsp:useBean>
<jsp:setProperty name="countryId" property="*" />

<html>
    <body>
        <h1>Add Country Using JSP</h1>

        <%
            if (countryId.getName() == null || countryId.getFullName() == null
                    || countryId.getCapital() == null) {
                out.println("Name, Full Name and Capitals are required");
                return;
            }
        %>

        <p>You entered the following data</p>
        <p>Name: <%= countryId.getName()%></p>
        <p>Full Name: <%= countryId.getFullName()%></p>
        <p>Capital: <%= countryId.getCapital()%></p>

        <!-- Set the action for processing the answers -->
        <form method="post" action="SaveCountryDetails.jsp">
            <input type="submit" name="submit" value="Confirm">
        </form>
    </body>
</html>
