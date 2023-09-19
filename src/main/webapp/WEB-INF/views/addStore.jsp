<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Know-Your-Neighborhood/Add Store</title>
</head>
<style>
.row{
margin-left: 500px;
margin-top: 80px;
background-color: pink;
padding-left: 20px;
padding-right: 20px;
 padding-top: 20px;
padding-bottom: 20px;
max-width: 500px;
border-radius: 30px;
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
  border-color: white;
  border-style: solid;
  cursor: pointer;
  }
 
.itn{
padding-left: 15px;
 padding-right: 15px; 
 padding-top: 10px;
  padding-bottom: 10px;
  margin-left: 30px;
  margin-right: 5px; 
  /* background-color: pink; */
  /* color: white; */
  border-radius: 15px;
  border-color: white;
  border-style: solid;
  }
.lbl{
      font-size: larger;
    font-weight: 900;;
    }
.sc-1{
   margin-top: 15px;
   margin-left: 100px
   }
.sc-2{
   margin-top: 15px;
   margin-left: 100px
   }
.sc-3{
   margin-top: 15px;
   margin-left: 100px
   }
.sc-4{
   margin-top: 15px;
   }
</style>

<body>
<div class="row">
<h1><center> Add Store</center> </h1>
<sf:form action="saveStore" method="post" modelAttribute="store">
<!-- <h3>Store Name</h3> -->
<div class="sc-1">
<label class="lbl">Store Name</label>
<sf:input class="itn" path="name" style="margin-left: 38px;"/>
</div>
<!-- <h3>Store Contact Number</h3> -->
<div class="sc-2">
<label class="lbl">Store Number</label>
<sf:input class="itn" path="contactNumber" style="margin-left: 20px;"/>
</div>
<!-- <h3>Store Address</h3> -->
<div class="sc-3">
<label class="lbl">Store Address</label>
<sf:input class="itn" path="localities" style="margin-left: 20px;"/>
</div>
<div class="sc-4">
<input class="btn" type="button" value="Go Back Home"  onClick="window.location.href='/kyn'" >
<input class="btn" type="submit" value="Add Store Details">

</div>
</sf:form>
</div>
</body>
</html>