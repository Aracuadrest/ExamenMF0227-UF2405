<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alta</title>
</head>
<body>
<h1>Alta de asesor de seguros</h1>
    <form action="resumenAlta.jsp" method="post">
        <div>
          
            <label for="nombre">Nombre<sub>*</sub>: </label>
            <input type="text" name="nombre" id="nombre" required>
        </div>
        <div>
            <label for="apellidos">Apellidos<sub>*</sub>: </label>
            <input type="text" name="apellidos" id="apellidos" required>
        </div>
        <div>
            <label for="dni">DNI <sub>*</sub>:</label>
            <input type="text" name="dni" id="dni" 
                   pattern="[0-9]{1,8}[A-Z]{1}" required>
        </div>
        <div>
            <label for="contrato">Relación Contractual:</label>
            <select name="contrato" id="contrato">
                <option value="Autonomo">Autónomo</option>
                <option value="Asalariado fijo">Asalariado fijo</option>
                <option value="Asalariado a comision">Asalariado a Comisión</option>
            </select>
        </div>
        <div>
            <label for="tipo">Tipo de Seguros que vende:</label>

            <input type="radio" name="tipo" id="automovil" value="automovil" checked>
            <label for="automovil">Automóvil</label>
          
            <input type="radio" name="tipo" id="hogar" value="hogar">
           <label for="hogar">Hogar</label>
           
           <input type="radio" name="tipo" id="decesos" value="decesos">
           <label for="decesos">Decesos</label>
          
        </div>
        <div>
            <label for="promedio">Num Ventas Promedio:</label>
            <input type="number" name="promedio" id="promedio" value="15" min="1" step="1">
        </div>
        <div>
            <input type="submit" value="Confirmar">
        </div>
    </form>
 

</body>
</html>