<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.lang.String" %> 
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
<style>
img
{
    height:400px;
    width:500px;
    position: relative;
    left:200px;
    top:70px;
}
h1,h2
{
  text-align: center;
}
</style>
</head>
<body>
<% 
String taghtml = (String) request.getAttribute("tagname");
List<String> imgNameshtml = (List<String>) request.getAttribute("imagename"); 
System.out.println(taghtml + " :taghtml");
System.out.println(imgNameshtml + " :imgNameshtml");
%>

<% if (taghtml != null && !taghtml.isEmpty() && imgNameshtml != null && !imgNameshtml.isEmpty()) { %>
    <h1>Here Are Your Results for <%= taghtml %></h1>
    <% for (String imgNamehtml : imgNameshtml) { %>
        <img src="Images/<%= imgNamehtml %>">
    <% } %>
<% } 
else {
    String errorMessage = (taghtml != null) ? taghtml : "No tag name provided";
%>
<h1>No Results Found</h1>
<h2>Sorry, there are no results to display for <%= errorMessage %>.</h2>
<%
}
%>

</body>
</html>