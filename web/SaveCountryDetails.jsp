<%-- SaveCountryDetails.jsp --%>
<%@page import="domain.Country" %>
<jsp:useBean id="countryId" 
             class="domain.Country" scope="session">
</jsp:useBean>
<jsp:useBean id="countryDAId" 
             class="da.CountriesDA" scope="application">
</jsp:useBean>

<html>
    <body>
        <%
//            countryDAId.addRecord(countryId);

            out.println(countryId.getName() + " " + countryId.getFullName() + " " + countryId.getCapital()
                    + " has been stored in the database");
            out.close();
        %>
    </body>
</html>
