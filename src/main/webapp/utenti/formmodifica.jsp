<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@    page import="com.generation.project.entities.*" %>
<%    Utente u = (Utente) request.getAttribute("utente"); %>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>MODIFICA UTENTE <%= u.getNome() %></title>
        <link rel="stylesheet" type="text/css" href="../foglioDiStile.css">
    </head>
    <body>
        <h1>Dettaglio utente con id = <%= u.getId() %></h1>
        <form action="modificautente" method="get">
            ID <input type="number" name="id" value="<%=  %>" readonly><br>
            NOME <input type="text" name="nome" value="<%=  %>"><br>
            COGNOME <input type="text" name="cognome" value="<%=  %>"><br>
            DATA DI NASCITA <input type="text" name="dob" value="<%=  %>"><br>
            NAZIONALITA' <input type="text" name="nazionalita" value="<%=  %>"><br>
            IMPORTO INIZIALE <input type="number" name="importoIn" value="<%=  %>"><br>
            STIPENDIO CANALIZZATO <input type="text" name="stipendio" value="<%=  %>"><br>
            <input type="submit" value="AGGIORNA">
        </form>
    </body>
</html>