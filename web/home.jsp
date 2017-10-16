<%-- 
    Document   : home
    Created on : 12/10/2017, 14:36:41
    Author     : ravan
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - Web Quiz</title>
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        
        <%
           if (session.getAttribute("teste") == null)
           {%>
           <nav class="navbar navbar-default">
              <div class="container-fluid">
                  <div class="navbar-header">
                      <a class="navbar-brand" href="#">Projeto 004</a>
                  </div>
                  <div class="navbar-header">
                        <a class="navbar-brand" href="#"></a>
                  </div>
              <ul class="nav navbar-nav">
                  <li class="active"><a href="login.jsp">Autenticar-se</a></li>
              </ul>
              </div>
           </nav> 
           <%}else
           {
            String nome = session.getAttribute("teste").toString();
           
        %>
        <nav class="navbar navbar-default">
              <div class="container-fluid">
                  <div class="navbar-header">
                      <a class="navbar-brand" href="#">Projeto 004</a>
                  </div>
              <ul class="nav navbar-nav">
                  <li class="active"><a href="login.jsp">Olá, <%= nome %></a></li>
              </ul>
              <form>
                    <input class="btn btn-danger navbar-btn" style="margin-left: 10px;" type="submit" name="btnSair" value="Sair"/>  
              </form>
              </div>
           </nav> 
        
        
            
        <center>
        <h3>Quiz - Conhecimentos gerais</h3>
        <h4><a href="questionario.jsp"><button type="button" class="btn btn-default">Realizar teste</button></a></h4>
        <h3>Testes realizados: <%= Quiz.contagem %></h3>
        <h3>Média: <%= Quiz.getMedia() %> </h3>
        <%Usuario user = new Usuario();%>
        <h3>nota usuario: <%= user.getNota() %> </h3>
        </center>
    <hr>
        <h3><center>Últimos 10 testes realizados</center></h3>
        <center>
            <table class="table table-bordered" style="width: 50%;">
            <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Nota</th>
            </tr>
             <%for (int i=1; i<=10; i++){%>
            <tr>
                <td><%=i%></td>
                 <td>aaaaaaa</td>
                 <td>aaaaaaaa</td>
            </tr>
            <%}%>
        </table>
        </center>        
        <%}
            if (request.getParameter("btnSair") != null)
            {
                
                session.invalidate();
                response.sendRedirect("home.jsp");
                
            }
        %>
        <h3><center>Top 10 melhores notas</center></h3>
         <center>
        <table class="table table-bordered"style="width: 50%;">
            <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Nota</th>
            </tr>
             <%for (int i=1; i<=10; i++){%>
             <center>
            <tr>
                <td><%=i%></td>
                 <td>aaaaaaaaaaaaa</td>
                 <td>aaaaaaaaaaaaa</td>
            </tr>
            <%}%>
           </table>
            </center>
    </body>
</html>
