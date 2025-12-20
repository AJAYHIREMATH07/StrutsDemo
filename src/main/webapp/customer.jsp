<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<h2>Bank Customer Form</h2>

<html:form action="/customer">

    <table>
        <tr>
            <td>Account Type:</td>
            <td>
                <html:select property="accountType">
                    <html:option value="">-- Select Account Type --</html:option>
                    <html:options property="accountTypeList"/>
                </html:select>
            </td>
            <td style="color:red">
                <html:errors property="accountType"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <html:submit value="Submit"/>
            </td>
        </tr>
    </table>

</html:form>
