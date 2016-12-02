<%-- 
    Document   : lista
    Created on : 1/12/2016, 04:29:48 PM
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
        <title>Lista de Personas</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                
                <table  id="persona" class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>nombre</th>
                            <th>apellidop</th>
                            <th>apellidom</th>
                            <th>edad</th>
                            <th>sexo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${personaList}" var="persona">
                            <tr>
                                <th>${persona.id}</th>                                
                                <th>${persona.nombre}</th>
                                <th>${persona.apellidop}</th>
                                <th>${persona.apellidom}</th>
                                <th>${persona.edad}</th>
                                <th>${persona.sexo}</th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                            ${message}
            </div><!--/.row-->
        </div><!--/.container -->
    </body>
    
   
    
</html>
