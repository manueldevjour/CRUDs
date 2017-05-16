<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="web for CRUD">
        <meta name="keywords" content="HTML, CSS, Bootstrap, jQuery, discos duros">
        <meta name="author" content="Manuel Trinidad Cerezo Bonilla">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tabla de Administración - Addisdu</title>
        <!-- Mi hoja de estilos -->
        <link rel="stylesheet" type="text/css" href="css/estilosindex.css">
        <!-- Fuente de Inknut Antiqua -->
        <link href="https://fonts.googleapis.com/css?family=Inknut+Antiqua" rel="stylesheet">
        <!-- Bootstrap en sí + Bootstrap social -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
        <!-- Font awesome for icons and more -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">        
        <!-- Script para jQuery -->
        <script src="https://code.jquery.com/jquery-3.0.0.js"></script>
        <!-- Latest compiled Javascript from Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <a href="index.jsp"><h1 id="titulotabla" href="index.jsp"> Listado de discos - Addisdu </h1></a>
        <br><br><br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
            Statement s = conexion.createStatement();

            ResultSet listado = s.executeQuery ("SELECT * FROM info ORDER BY ID");
        %>
        <div class="container">
            <div class="text-center">
            <a href="#mitabla" class="btn btn-primary text-center"><i class="fa fa-go" aria-hidden="true"></i> Ver la tabla</a>
            </div>
            <br><br>
            <div class="panel panel-primary text-center">
                <div class="panel-heading">
                    Instrucciones de uso de Addisdu
                </div>
                <div class="panel-body">
                    1 - La ID no se puede repetir<br>
                    2 - Todos los campos deben de estar completos<br>
                    3 - Puedes añadir todos los discos duros que desees<br>
                    4 - Como administrador de esta base de datos, tienes total<br>
                      libertad de agregar, modificar o eliminar la información.
                </div>
            </div>
            <br><br>
        <table id="mitabla" class="table table-hover">
            <thead>
                <tr class="success">
                    <form name="agregar" action="agregar.jsp" method="get">
                        <td><input type="text" name="ID" size="4" placeholder="ID"></td>
                        <td><input type="text" name="marca" size="20" placeholder="Marca"></td>
                        <td><input type="text" name="modelo" size="20" placeholder="Modelo"></td>
                        <td><input type="text" name="tipo" size="15" placeholder="Tipo"></td>
                        <td><input type="text" name="almacenamiento" size="15" placeholder="Almacenamiento"></td>
                        <td><input type="text" name="conexion" size="20" placeholder="Conexion"></td>
                        <td><input type="text" name="precio" size="5" placeholder="Precio"></td>
                        <td><button id="botonagregar" type="submit" value="Agregar" class="btn btn-primary"><i class="fa fa-plus-square"></i> Agregar</button></td>
                    </form>
                </tr>
            </thead>
            <tbody>
                <%
                            while(listado.next()) {
                                out.println("<tr><td>");
                                out.println(listado.getInt("ID") + "</td>");
                                out.println("<td>" + listado.getString("marca") + "</td>");
                                out.println("<td>" + listado.getString("modelo") + "</td>");
                                out.println("<td>" + listado.getString("tipo") + "</td>");
                                out.println("<td>" + listado.getString("almacenamiento") + "</td>");
                                out.println("<td>" + listado.getString("conexion") + "</td>");
                                out.println("<td>" + listado.getFloat("precio") + "</td>");
                        %>
                        
                        
                        <td>
                            <form method="get" action="modificar.jsp">
                                <input type="hidden" name="ID" value="<%=listado.getInt("ID") %>">
                                <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
                                <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
                                <input type="hidden" name="tipo" value="<%=listado.getString("tipo") %>">
                                <input type="hidden" name="almacenamiento" value="<%=listado.getString("almacenamiento") %>">
                                <input type="hidden" name="conexion" value="<%=listado.getString("conexion") %>">
                                <input type="hidden" name="precio" value="<%=listado.getFloat("precio") %>">
                                <button type="submit" class="btn btn-primary" value="Modificar"><i class="fa fa-pencil-square-o "></i> Modificar </button>
                            </form>
                        </td>
                        <td>
                            <form method="get" action="eliminar.jsp">
                                <input type="hidden" name="ID" value="<%=listado.getInt("ID") %>"/>
                                <button type="subit" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> Eliminar</button>
                            </form>
                        </td>
                    <%
                        } 
                           conexion.close();
                    %>
            </tbody>
        </table>
            <br><br>
            <a href="index.jsp" class="btn btn-primary"><i class="fa fa-home" aria-hidden="true"></i> Volver a la página principal</a>
        </div>
            <br><br>
            
    </body>
</html>
