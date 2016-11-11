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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.min-js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Proyecto Medicina</title>
        
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                    </div>
                </div>
                
                  <div class="col-sm-2">
                    <div class="form-group">
                        <label for="nombre">Apellido Paterno</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Apellido Paterno">
                    </div>
                </div>
                
                  <div class="col-sm-2">
                    <div class="form-group">
                        <label for="nombre">Apellido Materno</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                    </div>
                </div>
                
            </div>
            
            <div class="row">
                <div class="col-sm-2">
                <label for="peso">Peso</label>
                <input type="text" class="form-control" id="peso" placeholder="añade peso">
                </div>
                
                <div class="col-sm-2">
                <label for="peso">Estatura</label>
                <input type="text" class="form-control" id="peso" placeholder="añade estatura">
                </div>
                
                <div class="col-sm-2">
                <label for="peso">Peso</label>
                <input type="text" class="form-control" id="peso" placeholder="">
                </div>
                
                <div class="col-sm-2">
                <label for="peso">Peso</label>
                <input type="text" class="form-control" id="peso" placeholder="ingresa peso">
                </div>
            </div>
        </div>
        <h1>Hello World!</h1>
        
        
        <button class="btn btn-primary "type="button" >Ejemplo Boton <span class="caret"></span> </button>
        <p class="alert alert-danger"><strong>Uh oh! </strong>Have you had your daily dose of veggies today??</p>
               

</body>
</html>