<%-- 
    Document   : main
    Created on : 7/10/2016, 09:56:49 AM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s"   uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Medicina <sitemesh:write property="title"/></title>
        <link rel="stylesheet" href="<s:url value="/css/bootstrap.min.css"/>">
          
               
    </head>
    <body>
       
        
        <div class="container"> 
        <sitemesh:write property='body'/>
        </div>
        
        <script src="<c:url value="/js/jquery.min.js"/>"></script>
        <script src="<s:url value="/js/bootstrap.min.js"/>"></script>
      
        
        <sitemesh:write property="content"/>
               

</body>
</html>