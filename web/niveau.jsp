<%-- 
    Document   : niveau
    Created on : 12 avr. 2020, 23:51:25
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
// Parameters come as strings

String choice = request.getParameter("choice");
String choice2 = request.getParameter("choice2");
String nom = request.getParameter("nom");
 
out.println(nom + ", votre input était: question a=" + choice + " ,question b=" + choice2);
 
// Integer.parseInt() translates a string to an Integer
int score = Integer.parseInt(choice) + Integer.parseInt(choice2);
 
out.println("<h3>Votre score est de " + score + "</h3>");
 
if (score < 3) {
  out.print ("<p>Vous êtes un débutant</p>");
} else if (score < 5) {
  out.print ("<p>Vous avez un niveau moyen</p>");
} else {
  out.print ("<p>Vous êtes un expert !</p>");
}
 
%>
    </body>
</html>
