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
        <h1>Projeto 004</h1>
        <hr>
        <h3>Quiz - Conhecimentos gerais</h3>
        <h3><center>Tabela com últimos 10 testes realizados</center></h3>
        <table border ="1">
            <tr>
                <%  Quiz q = new Quiz();
                    for (int i = 1; i <= q.getContagem(); i++){                        
                %>
                <td></td>
            </tr>
        </table>
        
    </body>
</html>
