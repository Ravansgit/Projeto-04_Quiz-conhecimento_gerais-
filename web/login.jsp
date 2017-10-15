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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Insira seu nome:</h1>
        
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
        
        <form>
            Nome:<input type="text" name="txtNome" value=""/>
            <input type="submit" name="btnCadastrar" value="Cadastrar"/>
        </form>
    </body>
</html>
