<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %> 
<%@ page import="com.generation.project.entities.Utente" %>
<% List<Utente> utenti = (List<Utente>) request.getAttribute("elencoutenti"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Elenco Utenti</title>
    </head>
    <body>

    <%@ include file="../menu.html" %>
    <hr>

    <h1>ELENCO UTENTI</h1>

    <table>
        <tr>
            <td class="intestazione">
                ID
            </td>
            <td class="intestazione">
                NOME
            </td>
            <td class="intestazione">
                COGNOME
            </td>
            <td class="intestazione">
                DATA DI NASCITA
            </td>
            <td class="intestazione">
                NAZIONALITA'
            </td>
            <td class="intestazione">
                IMPORTO INIZIALE
            </td>
            <td class="intestazione">
                STIPENDIO CANALIZZATO
            </td>
        </tr>
        <!--    In JSP ci sono diversi simboli sintattici:
                CONFIGURAZIONE    -> < % @ quando vengono gestite le impostazioni della pagina: IMPORT etc.
                CODICE JAVA     -> < %     quando scriviamo codice come fossimo in una classe JAVA
                STAMPA            -> < % = quando vogliamo stampare i dati da JAVA (System.out.println())
         -->
		<% for(Utente u : utenti) {%>
		<tr>
			<td><%= u.getNome() %></td>
			<td><%= u.getCognome() %></td>
			<td><%= u.getDob() %></td>
			<td><%= u.getNazionalita() %></td>
			<td><%= u.getImportoIn() %></td>
			<td><%= u.isStipendio() %></td>
			<td>
				<a href="dettagliutente?id=<%= u.getId() %>">DETTAGLI</a>
			</td>
			<td>
				<!-- "localhost:8080/eliminalibro?id=IDLIBRO" -->
				<a href="eliminautente?id=<%= u.getId() %>">ELIMINA</a>
			</td>
		</tr>
		<%} %>	
    </table>

    </body>
</html>