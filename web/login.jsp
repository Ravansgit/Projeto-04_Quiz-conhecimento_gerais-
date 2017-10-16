<%-- 
    Document   : login
    Created on : 15/10/2017, 16:48:57
    Author     : Raul
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Login - Web Quiz</title>
    </head>
    <body>
    <center>
        <h1>Cadastro de sessão</h1>
    </center>    
    <hr>
        <%
            try
            {
               if (request.getParameter("btnCadastrar") != null)
               {
                   String nome = request.getParameter("txtNome");
                   
                   HttpSession sessão = request.getSession();
                   sessão.setAttribute("teste", nome);
                   Usuario user = new Usuario();
                   user.setNome(nome);
                   response.sendRedirect("home.jsp");
               }
            }
            catch(Exception ex)
            {
                ex.getMessage();
            }
        
        
        
        %>
    <center>
        <form class="form-inline">
            <label style="margin-right: 10px; font-size: 20px;">Nome: </label><input type="text" class="form-control" name="txtNome" value=""/>
            <input type="submit" class="btn btn-default" name="btnCadastrar" value="Cadastrar"/>
            </br>
            <a href="home.jsp"><button type="button" style="margin-top: 10px;" class="btn btn-danger">Voltar</button></a>
        </form>
    </center>
    </body>
</html>
