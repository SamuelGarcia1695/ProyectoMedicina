<%-- 
    Document   : formulario
    Created on : 24/11/2016, 02:35:18 PM
    Author     : Samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s"   uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:choose>
    <c:when test="${param.type=='NEW'}">
        <c:url var="action" value="/persona/crear"/>
    </c:when>
    <c:otherwise>
        <c:url var="action" value="/persona/actualizar"/>        
    </c:otherwise>
</c:choose>
<form:form modelAttribute="persona" method="post" action="${action}" class="form-horizontal" data-parsley-validate="">
    <form:errors path="*">
        <c:forEach items="${messages}" var="message">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="glyphicon glyphicon-alert"></span> <strong>${message}</strong>
            </div>
        </c:forEach>                        
    </form:errors>

    <fieldset>
        <c:choose>
            <c:when  test="${param.type=='NEW'}">
            </c:when>
            <c:otherwise>

                <form:hidden path="id" />
                <form:hidden path="version" />

            </c:otherwise>
        </c:choose>

        <s:bind path="persona.nombre">
            <div class="form-group">

                <label for="name" class="control-label col-xs-2">Nombre</label>    
                <div class="col-xs-5">
                    <form:input path="nombre" class="form-control" placeholder="Nombre"/>
                </div>                                
            </div>
        </s:bind> 
        
         <s:bind path="persona.apellidop">
            <div class="form-group">

                <label for="name" class="control-label col-xs-2">Apellido Paterno</label>    
                <div class="col-xs-5">
                    <form:input path="apellidop" class="form-control" placeholder="Apellido Paterno"/>
                </div>                                
            </div>
        </s:bind> 
        
        <s:bind path="persona.apellidom">
            <div class="form-group">

                <label for="name" class="control-label col-xs-2">Apellido Materno</label>    
                <div class="col-xs-5">
                    <form:input path="apellidom" class="form-control" placeholder="Apellido Materno"/>
                </div>                                
            </div>
        </s:bind> 
        
        <s:bind path="persona.edad">
            <div class="form-group">

                <label for="name" class="control-label col-xs-2">Edad</label>    
                <div class="col-xs-5">
                    <form:input path="edad" class="form-control" placeholder="Edad"/>
                </div>                                
            </div>
        </s:bind> 
        
        <s:bind path="persona.sexo">
            <div class="form-group">

                <label for="name" class="control-label col-xs-2">Sexo</label>    
                <div class="col-xs-5">
                    <form:input path="sexo" class="form-control" placeholder="Sexo"/>
                </div>                                
            </div>
        </s:bind> 
        
        
        
        
    </fieldset>
    
    <c:choose>
        <c:when test="${param.type=='NEW'}">
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-10">
                    <form:button id="saveBtn" name="saveBtn" class="btn btn-primary btn-large" value="save">
                        <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"> Guardar</span> 
                    </form:button>
                    <a class="btn btn-default" href="<c:url value="/"/>">Cancelar <span class="glyphicon glyphicon-erase"></span></a>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-10">
                    <form:button id="updateBtn" name="updateBtn" class="btn btn-primary btn-large" value="update">
                        <span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span> Actualizar
                    </form:button>
                    <a class="btn btn-danger" href="<c:url value="/persona/delete"/>" onclick="return confirm('Desea eliminar?');" >Borrar <span class="glyphicon glyphicon-trash"></span></a>
                    <a class="btn btn-default" href="<c:url value="/"/>">Cancelar <span class="glyphicon glyphicon-erase"></span></a>
                </div>
            </div>
        </c:otherwise>
    </c:choose>

</form:form>