<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="dd"  uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Know-Your-Neighborhood/Add Store</title>
</head>
<style>
body{
  background: linear-gradient(45deg, pink, transparent);
}
.row{
margin-left: 540px;
margin-top: 40px;
background-color: pink;
padding-left: 20px;
padding-right: 20px;
 padding-top: 20px;
padding-bottom: 40px;
max-width: 530px;
border-radius: 30px;
}
.btn{
margin-top: 15px;
padding-left: 15px;
 padding-right: 15px; 
 padding-top: 10px;
  padding-bottom: 10px;
  margin-left: 95px;
  margin-right: 5px;
  background-color: pink;
  color: white;
  border-radius: 15px;
  border-color: white;
  border-style: solid;
  cursor: pointer;
  }
.btn1{
margin-top: 15px;
padding-left: 25px;
 padding-right: 25px; 
 padding-top: 10px;
  padding-bottom: 10px;
  margin-left: 30px;
  margin-right: 5px;
  background-color: pink;
  color: white;
  border-radius: 15px;
  border-color: white;
  border-style: solid;
  cursor: pointer;
  }
.btn2{
margin-top: 15px;
padding-left: 15px;
 padding-right: 15px; 
 padding-top: 10px;
  padding-bottom: 10px;
  margin-left: 30px;
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
   margin-top: 30px;
   }
.sc-5{
   margin-left: 00px;
   }
a{
text-decoration: none;
} 
</style> 

<body>
<div class="sc-5">
<h1><center> All Stores</center> </h1>
<a class="btn1" type="button"  href="/">Home</a>
<a class="btn2" type="button"  href="/addstore">Add Store</a>
</div>
<dd:forEach var="l" items="${lone}"> 
<div class="row">
<div class="sc-1">
<label class="lbl">Store Name</label>
<input class="itn" style="margin-left: 38px;" value="${l.name}" disabled="disabled"/>
</div>
<div class="sc-2">
<label class="lbl">Store Number</label>
<input class="itn"  style="margin-left: 20px;" value="${l.contactNumber}" disabled="disabled" />
</div>
<div class="sc-3">
<label class="lbl">Store Address</label>
<input class="itn"  style="margin-left: 20px;" value="${l.localities}" disabled="disabled" />
</div>
<div class="sc-4">
<a class="btn" type="button"  href="/update/${l.id_Store}">Edit Store</a>
<a class="btn" type="button"  href="/delete/${l.id_Store}">Delete Store</a>
</div>
</div>
</dd:forEach>
</body>
<script>
   function del(){
   alert("Store will be deleted permenantely!!");
          location.href="/viewStore";  }
</script>
</html>

<!-- <input class="btn" type="button" value="Update Store"  onClick="window.location.href='/update'" >
<input class="btn" type="button" value="Delete Store" onclick="del()" > -->
