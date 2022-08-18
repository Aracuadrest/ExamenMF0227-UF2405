<%@page import="modelo.Asesor"%>
    <%@page import="dao.AsesorDAO"%>
    <%@page import="dao.AsesorDAOMySQL"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos</title>
</head>
<body>
<h1>Datos del asesor</h1>

	<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String dni=request.getParameter("dni");
	String contrato = request.getParameter("contrato");
	String tipo = request.getParameter("tipo");
	boolean coche = true;
	boolean hogar = false;
	boolean decesos = false;
	if (tipo.equals("hogar")){
		coche=false;
		hogar=true;
		decesos = false;
	}
	if (tipo.equals("decesos")){
		coche=false;
		hogar=false;
		decesos = true;
	}
	int numVentas = Integer.parseInt(request.getParameter("promedio"));
	%>
	
	
	
<ul>	
	<li>Nombre: <%=request.getParameter("nombre") %></li>
	<li>Apellidos: <%=request.getParameter("apellidos") %></li>
	<li>DNI: <%=request.getParameter("dni") %></li>
	<li>Relación contractual: <%=request.getParameter("contrato") %></li>
	<li>Tipo de seguros: <%=request.getParameter("tipo") %></li>
	<li>Num Ventas promedio: <%=request.getParameter("promedio") %></li>
</ul>
 
<%
	Asesor a=new Asesor(dni, nombre,  apellidos, contrato, coche, hogar, decesos,  numVentas);
		
		AsesorDAO asesorDao = new AsesorDAOMySQL();
		asesorDao.insertarAsesor(a);
		%>
</body>
</html>