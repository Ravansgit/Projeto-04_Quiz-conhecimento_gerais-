<%-- 
    Document   : Questionario
    Created on : 12/10/2017, 16:46:42
    Author     : ravan
--%>

<%@page import="java.util.Random"%>
<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Perguntas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questionario - Web_Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>Quiz</h2>
        <h3>Questões:</h3>
        
        <%
            try
            {
                if (request.getParameter("finalizar") != null)
                {
                    int acertos = 0;
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
                    Quiz.soma += (100.00 * ((double)acertos/10.0));
                    response.sendRedirect(request.getContextPath()+"/home.jsp");
                    
                }
                
            }
            catch(Exception ex)
            {
                
            }
        
        
        
        %>
        
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
            <input type="submit" name="finalizar" value="Finalizar"/>
        </form>
    </body>
</html>
