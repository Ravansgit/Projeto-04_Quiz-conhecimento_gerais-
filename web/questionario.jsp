<%-- 
    Document   : Questionario
    Created on : 12/10/2017, 16:46:42
    Author     : ravan
--%>

<%@page import="br.com.fatecpg.quiz.Usuario"%>
<%@page import="java.util.Random"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Perguntas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questionario - Web Quiz</title>
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <center><h1>Web Quiz</h1></center>
        <hr>
        <h3>Questões:</h3>
        
        <%
            try
            {
                if (request.getParameter("finalizar") != null)
                {
                    int acertos = 0;
                    Usuario jogo = new Usuario();
                    for (Perguntas q: Quiz.getPerguntaLista())
                    {
                        String respostaUser = request.getParameter(q.getPergunta());
                        
                        if (respostaUser != null)
                        {
                            if (respostaUser.equals(q.getResposta()))
                            {
                                acertos++;
                                
                                
                            }
                            
                        }
                        
                    }
                    
                    Quiz.contagem++;
                    jogo.setNota(acertos);
                    Quiz.soma += (100.00 * ((double)acertos/10));                    
                    Usuario.getNotaUser().add(jogo);
                    response.sendRedirect(request.getContextPath()+"/home.jsp");
                    
                }
                
            }
            catch(Exception ex)
            {
                
            }
        
        
        
        %>
        <div class="col-sm-11"  style=" background-color: #DCDCDC; border-radius: 25px; margin-left: 60px;">
        <form>
            <%int i = 1;%>
            <%for (Perguntas q: Quiz.getPerguntaLista()){%>
            <%if (i <= 10){%>
            <%String teste = i + "-";%>
            <h4><%= teste + q.getPergunta() %></h4>
            <input type="radio" name="<%= q.getPergunta() %>" value="<%= q.getAlternativas()[0] %>" />
            <%= q.getAlternativas()[0] %>
            <input type="radio" name="<%= q.getPergunta() %>" value="<%= q.getAlternativas()[1] %>" />
            <%= q.getAlternativas()[1] %>
            <input type="radio" name="<%= q.getPergunta() %>" value="<%= q.getAlternativas()[2] %>" />
            <%= q.getAlternativas()[2] %> 
            <%i = i + 1;%>
            <%}%>
            <%}%>
            <br/><br/>
            <input class="btn btn-primary" type="submit" name="finalizar" value="Finalizar"/>
             <a href="home.jsp"><button type="button" class="btn btn-danger">Voltar</button></a>
             </br>
        </form>
        </div>
    </body>
</html>
