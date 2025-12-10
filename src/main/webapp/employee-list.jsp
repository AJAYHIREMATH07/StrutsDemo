<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee List</title>
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  <style>
    table { border-collapse: collapse; width: 80%; margin: 20px auto; }
    th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
    th { cursor: pointer; background: #f4f4f4; }
      th:hover {
    background-color: #f0f0f0; /* light gray background */
    color: green;             /* text turns green */
    cursor: pointer;          /* shows pointer cursor */
  }
    
  </style>
</head>
<body>
<%--  

  <h2 style="text-align:center;">Employees</h2>
  <table id="empTable">
    <thead>
      <tr>
        <th data-col="id">ID</th>
        <th data-col="name">Name</th>
        <th data-col="department">Department</th>
        <th data-col="salary">Salary</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="emp" items="${employees}">
        <tr>
          <td>${emp.id}</td>
          <td>${emp.name}</td>
          <td>${emp.department}</td>
          <td>${emp.salary}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

<script>
$(function(){
  // Simple client-side sort by clicking header (string/numeric)
  $('#empTable th').on('click', function(){
    var table = $(this).closest('table');
    var tbody = table.find('tbody');
    var idx = $(this).index();
    var rows = tbody.find('tr').get();

    rows.sort(function(a, b) {
      var A = $(a).children('td').eq(idx).text().toUpperCase();
      var B = $(b).children('td').eq(idx).text().toUpperCase();
      var numA = parseFloat(A), numB = parseFloat(B);
      if (!isNaN(numA) && !isNaN(numB)) {
        return numA - numB;
      }
      return (A < B) ? -1 : ((A > B) ? 1 : 0);
    });

    $.each(rows, function(i, row) { tbody.append(row); });
  });
});
</script>
--%>

<p>This is JSP running. Current time: <%= new java.util.Date() %></p>
<p>This is EL printing employees count: ${employees.size()}</p>
<p>This is EL printing employees 1st: ${employees[0]}</p>
<p>This is EL printing employees 1st: ${employees[0].department}</p>
<p>This is EL printing is Employees : ${empty employees}</p>

<input type="text" id="searchBox" placeholder="Search employees..." 
       style="margin:20px; width:200px;" />
       <p id="resultCount" style="margin-left:20px; color:gray;">Results: ${employees.size()}</p>
       
<table id = "empTable">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Dept</th>
        <th>Salary</th>
        <th>Color Test Salary</th>
      </tr>
    </thead>

    <tbody>
      <c:forEach var="emp" items="${employees}" varStatus="loop">
        <tr>
           <td>${loop.count}</td>
           <td>${emp.name}</td>
           <td>${emp.department}</td>
           <td>${emp.salary}</td>

           <td 
              <c:if test="${emp.salary > 70000}">
                 style="color:green;"
              </c:if>
           >
              ${emp.salary}
           </td>
        </tr>
      </c:forEach>
    </tbody>
</table>
  <script>
//Show how many rows match the search
  $("#searchBox").on("keyup", function() {
      var value = $(this).val().toLowerCase();
      var count = 0;

      $("#empTable tbody tr").filter(function() {
          var match = $(this).text().toLowerCase().indexOf(value) > -1;
          $(this).toggle(match);
          if (match) count++;
      });

      $("#resultCount").text("Results: " + count);
  });
  </script>
</body>
</html>
