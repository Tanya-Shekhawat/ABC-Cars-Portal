<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="dd"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Know-Your-Neighborhood/List Store</title>
</head>
<style>
.user-detail{
    border-radius: 5px 5px 0 0 !important;
    overflow: hidden;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 1.5em;
    min-width: 400px;
    color: #000;
    margin-left: auto;
    margin-right: auto;  
}

.user-detail thead tr{
    
    border-radius: 5px 5px 0 0 !important;
    /* background-color: #4ed7bc; */
    background-color: pink;
    color: #000;
    text-align: left;
    font-weight: bold;
}

.user-detail th,
.user-detail td{
padding: 12px 15px;
}

.user-detail tbody tr{
    text-align: left;
}

.user-detail tbody th{
    text-align: left;
}

.user-detail tbody tr:nth-of-type(even) {
  /* background-color: #8acbbe ; */
  background-color: pink ; 
}

.user-detail tbody tr:last-of-type {
  border-bottom: 2px solid pink;
}
.sc-4{
   margin-top: 15px;
   margin-left: 550px;
   }
.btn{
margin-top: 15px;
padding-left: 15px;
 padding-right: 15px; 
 padding-top: 10px;
  padding-bottom: 10px;
  margin-left: 75px;
  margin-right: 5px;
  background-color: pink;
  color: white;
  border-radius: 15px;
  border-color: pink;
  border-style: solid;
  cursor: pointer;
  }
</style>


<body>
<h1 style="padding-left: 45%; ">Store Details</h1>
<Table class="user-detail">
<thead>
<tr>
<th>Store Name</th>
<th>Store Phone</th>
<th>Store Address</th>
</tr>
</thead>
<tbody>
<dd:forEach var="l" items="${lone}"> 
<%-- <tr><td>${l.name}</td><td>${l.contactNumber}</td><td>${l.localities}</td></tr> --%>
<tr><td>${l.name}</td><td>${l.contactNumber}</td>
<td>
<dd:forEach var="location" items="${l.getLocalities()}">
<span> ${location}</span>
</dd:forEach>
</td>
</tr>
 </dd:forEach> 
</tbody>
</Table>

<div class="sc-4">
<input class="btn" type="button" value="Go to Back Home"  onClick="window.location.href='/kyn'" >
<input class="btn" type="button" value="Add Store Details" onClick="window.location.href='addstore'">
</div>
 <!-- </tr> --> 
<%-- <td>
<dd:forEach var="location" items="${localities}">
		<span> ${location}</span>
</dd:forEach>
</td>  --%>


</body>
</html>