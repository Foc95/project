<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@    page import="com.generation.project.entities.*" %>
<%    Utente u = (Utente) request.getAttribute("utente"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>DETTAGLI <%= u.getId() %></title>
        <link rel="stylesheet" type="text/css" href="../stileDettagli.css">
    </head>
    <body>
    <div class="box">
    	<div class="title">Dettaglio Utente <%= u.getId() %></div>
        <hr>
        <br>
        <div class="details">
        	NOME <%= u.getNome() %><br>
        	COGNOME <%= u.getCognome() %><br>
        	DATA DI NASCITA <%= u.getDob() %><br>
        	NAZIONALITA' <%= u.getNazionalita() %><br>
        	IMPORTO INIZIALE <%= u.getImportoIn() %><br>
        	STIPENDIO CANALIZZATO <%= u.isStipendio() %><br>
        	<a href="formmodifica?id=<%=u.getId()%>">FORM MODIFICA</a>
        </div>
    </div>
        
    </body>
</html>

