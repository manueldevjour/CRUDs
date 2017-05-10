<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="web for CRUD">
        <meta name="keywords" content="HTML, CSS, Bootstrap, jQuery, discos duros">
        <meta name="author" content="Manuel Trinidad Cerezo Bonilla">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Modificar artículo - Addisdu</title>
        <!-- Mi hoja de estilos -->
        <link rel="stylesheet" type="text/css" href="css/estilosindex.css">
        <!-- Bootstrap en sí + Bootstrap social -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
        <!-- Font awesome for icons and more -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">         
        <!-- Script para jQuery -->
        <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
        <!-- Latest compiled Javascript from Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
        
        </script>
    </head>
    <body background="img/typing.gif" style="background-repeat: no-repeat; background-size: auto;">
        <% request.setCharacterEncoding("UTF-8"); %>
        <div class="container">
        <br><br>
      
              <form method="get" action="agregarModificado.jsp">
                <br>
                <label>ID: </label><input type="text" size="5" name="ID" value="<%= request.getParameter("ID") %>" readonly><br><br>
                <label>Marca: </label><input type="text" size="20" name="marca" value="<%= request.getParameter("marca") %>"><br><br>
                <label>Modelo: </label><input type="text" size="20" name="modelo" value="<%= request.getParameter("modelo") %>"><br><br>
                <label>Tipo: </label><select name="tipo" value="<%= request.getParameter("tipo") %>">
                                        <option value="Elige" selected>Elige</option>
                                        <option value="Interno">Interno</option> 
                                        <option value="Externo">Externo</option>
                                        <option value="SSD">SSD</option>
                                     </select><br><br>                    
                <label>Almacenamiento: </label>
                                    <select name="almacenamiento" value="<%= request.getParameter("almacenamiento") %>">
                                        <option value="Elige" selected>Elige</option>
                                        <option value="500GB">500GB</option> 
                                        <option value="1TB">1TB</option>
                                        <option value="2TB">2TB</option>
                                        <option value="5TB">5TB</option>
                                        <option value="10TB">10TB</option>
                                     </select><br><br>
                <label>Conexión: </label><input type="text" size="20" name="conexion" value="<%= request.getParameter("conexion") %>"><br><br>
                <label>Precio: </label><input type="text" size="10" name="precio" value="<%= Float.valueOf(request.getParameter("precio")) %>">
                <hr>
                <a href="tabla.jsp" class="btn btn-danger"><i class="fa fa-times" aria-hidden="true"></i> Cancelar</a>
                <button type="submit" class="btn btn-success"><i class="fa fa-check" aria-hidden="true"></i> Aceptar</button><br><br>
            </form>
                <a href="index.jsp" class="btn btn-primary"><i class="fa fa-home" aria-hidden="true"></i> Volver a la página principal</a>
                <a href="tabla.jsp" class="btn btn-primary"><i class="fa fa-table" aria-hidden="true"></i> Volver atrás para ver los datos</a>
        </div>
        
        <footer class="text-center">
            <hr>
            <p> Created by: Manuel Trinidad Cerezo Bonilla <br>
            Contact info: 
            <a id="twitter" href="https://www.twitter.com/manueldevjour" target="_blank"><i class="fa fa-twitter"></i></a>  
            <a id="linkedin" href="https://www.linkedin.com/in/manuel-trinidad-cerezo-bonilla-735701a9/" target="_blank"><i class="fa fa-linkedin"></i></a>  
            <a id="telegram" href="https://t.me/Wanolo"><i class="fa fa-telegram" target="_blank"></i></a>  
            <a id="github" href="https://www.github.com/manueldevjour"><i class="fa fa-github" target="_blank"></i></a>
            </p>
        </footer>
    
    </body>
</html>
