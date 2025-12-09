<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<body>
    <h2>Struts 1 Input Form</h2>

    <html:form action="/hello.do">
        Enter your name:
        <html:text property="username"/>
        <html:submit value="Say Hello"/>
    </html:form>
    <p><a href="employees.do">View Employees</a></p>
    
</body>
</html>
