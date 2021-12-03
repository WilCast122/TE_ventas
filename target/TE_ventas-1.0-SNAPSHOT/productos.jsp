<%
    if (session.getAttribute("login") != "OK") {
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
                background-image: url("https://scontent.flpb1-1.fna.fbcdn.net/v/t39.30808-6/260282258_2092621877581298_4645149451861921642_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=QlSRgElxbOoAX-cPJuq&_nc_ht=scontent.flpb1-1.fna&oh=80da74bcdc0f2c54477cb08a315281fb&oe=61AB38D6");
                background-repeat: repeat;
                
            }
            </style>
    </head>
    <br>
    <body>
        <div class="container">
            <br>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="productos" />
            </jsp:include>
            <br>
            <br>
            <a href="ProductoControlador?action=add"class ="btn btn-success btn-sm"><i class="fas fa-plus-circle"></i>Nuevo </a>
               <a href="Logout" class="btn btn-danger" >Cerrar Session</a>

            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th> 
                    <th>Pelicula</th> 
                    <th>Sala N°</th> 
                    <TH>Formato</TH>
                    <th>Precio</th>
                    <th></th> 
                    <th></th> 
                </tr>
                <c:forEach var="item" items="${productos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.formato}</td>
                        <td>${item.precio}</td>
                        <td><a href="ProductoControlador?action=edit&id=${item.id}"><i class="fas fa-user-edit"></i></td>
                        <td><a href="ProductoControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta Seguro ?????'))"><i class="fas fa-trash"></i></td>

                    </tr> 
                </c:forEach>

            </table>
            <center><iframe width="400" height="275" src="https://www.youtube.com/embed/DEXcxb4_S3s" 
                    title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
                    clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>