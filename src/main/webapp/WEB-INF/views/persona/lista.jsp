<%-- 
    Document   : lista
    Created on : 1/12/2016, 04:29:48 PM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            </div><!--/.row-->
        </div><!--/.container -->
    </body>
    
    <content>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#persona').DataTable();
            });
        </script>
    </content>
    
</html>
