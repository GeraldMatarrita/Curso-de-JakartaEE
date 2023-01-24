<%--
  Created by IntelliJ IDEA.
  User: geram
  Date: 23/01/2023
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tarea 4: Cambiar de Color</title>
</head>
<body>
<h3 style="color: ${cookie.color.getValue() == null? "black": cookie.color.getValue()}">Tarea 4: Cambiar de color de los textos</h3>
<p style="color: ${cookie.color.getValue() == null? "black": cookie.color.getValue()}">Hola este es un texto que cambia de color según las opciones</p>
<form action="/webapp-cookie-tarea4/cambiar-color" method="get">
    <div>
        <label for="color">Cambiar Color</label>
        <div>
            <select name="color" id="color">
                <option selected disabled hidden>Escoge un color</option>
                <option value="blue">Azul</option>
                <option value="red">Rojo</option>
                <option value="green">Verde</option>
                <option value="aqua">Aqua</option>
                <option value="BlueViolet">Violeta</option>
                <option value="Gray">Gris</option>
                <option value="Cyan">Cyan</option>
            </select>
        </div>
    </div>
    <div>
        <input type="submit" value="Cambiar">
    </div>
</form>
</body>
</html>
