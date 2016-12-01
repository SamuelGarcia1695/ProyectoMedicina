<%-- 
    Document   : nuevo
    Created on : 18/11/2016, 01:24:02 PM
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
        <title>Nueva Persona</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <legend>Nueva Persona</legend>
                <jsp:include page="formulario.jsp">
                    <jsp:param name="type" value="NEW"/>
                </jsp:include>
            </div><!-- /.row --->
        </div><!-- /.container -->
    </body>
</html>
