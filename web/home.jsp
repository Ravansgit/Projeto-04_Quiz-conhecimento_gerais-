<%-- 
    Document   : home
    Created on : 12/10/2017, 14:36:41
    Author     : ravan
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Web_Quiz</title>
    </head>
    <body>
        
        <%
           if (session.getAttribute("teste") == null)
           {%>
            <h4><a href="login.jsp">Autenticar-se!</a></h4>
           <%}else
           {
            String nome = session.getAttribute("teste").toString();
           
        %>
        
        <h3>Olá, <%= nome %></h3>
        
        <form>
            <input type="submit" name="btnSair" value="Sair"/>
        </form>  
        
        <%}
            if (request.getParameter("btnSair") != null)
            {
                
                session.invalidate();
                response.sendRedirect("home.jsp");
                
            }
            %>
            
        <h1>Projeto 004</h1>
        <hr>
        <h3>Quiz - Conhecimentos gerais</h3>
        <h4><a href="questionario.jsp">Realizar teste</a></h4>
        <h3>Testes realizados: <%= Quiz.contagem %></h3>
        <h3>Média: <%= Quiz.getMedia() %> </h3>
        <h3><center>Tabela com últimos 10 testes realizados</center></h3>
        <table border ="1">
            
        </table>        
        
        
    </body>
</html>
