<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>

<h2 id="heading">Welcome</h2>

<input id="amount" value="1000" />
<button id="updateBtn">Update Amount</button>


<form onsubmit="return concatToNewEle(event)">
<input id="name" type="text" name="username" placeholder="Enter your name"/>

<input id="age"  type="text" name="age" placeholder="Enter your age"/>

<input id="salary"  type="text" name="number" placeholder="Enter your number"/>
<button type="submit">Submit</button>


</form>

<div id="msgArea"></div>
<div id="details">the details are </div>


<table border="1">
   <tbody id="tableBody">
      <tr><td>101</td><td>John</td></tr>
   </tbody>
</table>
<button id="btn">Click Me</button>
<select id="category">
  <option>Debit</option>
  <option>Credit</option>
</select>
<script>

// === DOM SELECTOR EXAMPLES ===

// 1. Update text
document.getElementById("heading").innerText = "Hello Ajay!";

// 2. Update attribute
document.getElementById("amount").setAttribute("value", "2000");

// 3. Button click → change message
document.getElementById("updateBtn").onclick = function() {
     document.getElementById("msgArea").innerText = 
         "Amount updated to " + document.getElementById("amount").value;
};

// 4. Add a new row to table
const tr = document.createElement("tr");
tr.innerHTML = "<td>102</td><td>David</td>";
document.getElementById("tableBody").appendChild(tr);

function concatToNewEle(event){
	event.preventDefault(); // stop page reload

	document.getElementById("details").innerText = "hello "+document.getElementById("name").value
	+", age:"+document.getElementById("age").value + ", salary:"+document.getElementById("salary").value; 
	return false;
}

document.getElementById("btn").addEventListener("click", function() {
    alert("Button clicked!");
});
document.getElementById("category").addEventListener("change", function() {
	   console.log("Selected:", this.value);
	});

</script>

</body>
</html>
