<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 <%@ taglib uri="WEB-INF/greettag.tld"  prefix="mphasis" %>
  <%@ taglib uri="WEB-INF/uppercasetag.tld"  prefix="util" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom tag</title>
</head>
<body>
	<h3>
		<mphasis:greet fname="Tom" />
	</h3>
	<h3>
	<mphasis:greet/>
	</h3>
	<h3>
	<util:uppercase>this is some demo text</util:uppercase>
	</h3>
</body>
</html>