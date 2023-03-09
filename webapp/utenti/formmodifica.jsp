<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@	page import="com.generation.project.entities.*" %>    
<%	Utente u = (Utente) request.getAttribute("utente"); %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>MODIFICA UTENTE <%= u.getNome() %></title>
		<link rel="stylesheet" type="text/css" href="../stile.css">
	</head>
	<body>
	<div class="form">
		<div class="title">Dettaglio utente con id  <%= u.getId() %></div>
      <hr>
		<form action="modificautente" method="get">
    <div class="form__group field">
      <input class="form__field" type="text" name="id" value="<%= u.getId() %>" readonly><br>
      <label for="id" class="form__label">ID</label>
    </div>
		<div class="form__group field">
			<input class="form__field" type="text" name="nome" value="<%= u.getNome() %>"><br>
      <label for="name" class="form__label">Nome</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="cognome" value="<%= u.getCognome() %>"><br>
      <label for="cognome" class="form__label">Cognome</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="dob" value="<%= u.getDob() %>"><br>
      <label for="dob" class="form__label">Data di nascita</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="nazionalita" value="<%= u.getNazionalita() %>"><br>
      <label for="nazionalita" class="form__label">Nazionalita'</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="importoin" value="<%= u.getImportoIn() %>"><br>
      <label for="name" class="form__label">ImportoIniziale</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="stipendio" value="<%= u.isStipendio() %>"><br>
      <label for="name" class="form__label">Stipendio</label>
    </div>
			<input class="salva" type="submit" value="AGGIORNA">
		</form>
	</div>
		
	</body>
</html>