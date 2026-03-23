<%@page import="com.mphasis.productmanagerapp.model.ProductModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link href ='style.css' rel ='stylesheet'>
</head>
<body>
<jsp:include page= "menu.jsp"></jsp:include>
<h3>Products</h3>
<% 
List<ProductModel> products =(List<ProductModel>)request.getAttribute("products");
%>
<table border="1" class="mytab">
<tr>
<th>Id</th>
<th>Name</th>
<th>Price</th>
<c:forEach items ="${products}"  var ="p">

<tr>
 <td>${p.id}</td>
  <td>${p.name}</td>
   <td>${p.price}</td>
</tr>
</c:forEach>
<%
for(ProductModel p:products) {
%>
<tr>
<td><%=p.getId() %></td>
<td><%=p.getName() %></td>
<td><%=p.getPrice() %></td>
</tr>
<%
}
%>
<tr>
<form action ='productcontroller' method='post'> 
<td><input type ='text' name ='id'></td>
<td><input type ='text' name ='name'></td>
<td><input type ='text' name ='price'></td>
</tr>
<tr><th colspan='3'><button> Add </button></th>
</tr>
</form>
</table>
</body>
</html>