<% 
    if (session.getAttribute("login") != "OK"){
        response.sendRedirect("login.jsp");
    }
    %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Punto de venta</title>
        <style>
                        body {
                display: flex;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-image: url("https://i0.wp.com/hipertextual.com/wp-content/uploads/2017/03/Captura-de-pantalla-2017-03-30-a-las-11.59.05.png?fit=2012%2C1006&ssl=1");
                background-repeat: repeat;
                
            }
        </style>
    </head>
    <body>
        <div class="container">
           
            <center><h1><div class="d-inline p-2 bg-primary text-white">CLIENTES</div></h1></center>
            
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="clientes" />
            </jsp:include>
            <br>
            <a href="ClienteControlador?action=add"class ="btn btn-success btn-sm"><i class="fas fa-plus-circle"></i>Nuevo </a>
            
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th> 
                    <th>Nombre</th> 
                    <th>CI</th> 
                    <th>Celular</th>
                    <th></th> 
                    <th></th> 
                </tr>
                <c:forEach var="item" items="${clientes}">
                 <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.correo}</td>
                    <td>${item.celular}</td>
                    <td><a href="ClienteControlador?action=edit&id=${item.id}"><i class="fas fa-user-edit"></i></td>
                    <td><a href="ClienteControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta Seguro ?????'))"><i class="fas fa-trash"></i></td>
                    
                </tr> 
                </c:forEach>
                
            </table>
            <a href="Logout" class="btn btn-danger" >Cerrar Session</a>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>