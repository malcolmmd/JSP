<%-- ComputeBMI.jsp --%>
<html>
    <head>
        <title>ComputeBMI</title>
    </head>
    <body>
        <%@ page import = "domain.BMI" %>
        <jsp:useBean id="bmi" class="domain.BMI" scope="page" ></jsp:useBean>
        <jsp:setProperty name="bmi" property="*" />
        <h1>BMI calculation</h1>

        Height:   <%= String.format("%.2f", bmi.getHeight())%><br />
        Weight:   <%= String.format("%.2f", bmi.getWeight())%><br />
        BMI:      <%= String.format("%.2f", bmi.getBMI())%><br />
        Category: <%= String.format("%s", bmi.getStatus())%><br /></b>
</body>
</html>