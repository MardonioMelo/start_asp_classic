<!DOCTYPE html>
<html>
    <head>
        <title>Objeto de Sessão ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>
        <%
            'define o limite de tempo da sessão, o padrão é 20 min.'
            Session.Timeout=5
            'Esperar muito por uma sessão ociosa consome recursos do servidor, 
            'mas se a sessão for excluída muito cedo, o usuário terá que começar 
            'tudo de novo porque o servidor excluiu todas as informações.

            'Dica: armazene apenas PEQUENAS quantidades de dados em variáveis ​​de sessão!

            Session("username") = "Mardônio Melo"
            Session("idade") = 50     
            
           'use Session.Abandon para finalizar a sessão
        %>

        <a href="/session.asp">Nome</a>

        <hr>

        <!-- Armazenar as preferências do usuário no objeto Sessão  -->
        <%if Session("screenres")="low" then%>
        Esta é a versão de texto da página
        <%else%>
        Esta é a versão multimídia da página
        <% end if %>

        <hr>

        <% 
            Session("venda") = "Sim"

            if session.contents("idade") < 18 then     
                'Remover uma variável de sessão         
                session.contents.remove("venda")
            end if

            response.write(Session("venda"))

            'Remove todas as variáveis de sessão
            'session.contents.RemoveAll()            
        %> 

        <hr>

        <%
            Session("produto")="Café"
            Session("custo") = 10

            'lista todos as variáveis de sessão do usuário que está na sessão'
            dim i
            for each i in session.contents
                response.write(i & "<br>")
            next

            response.write("<hr>")

            'Se você não souber o número de itens na coleção de conteúdo, poderá usar a propriedade Count:
            dim a
            dim b
            b = session.contents.count
            response.write("Qtd de variáveis de sessão: " & b & "<br>")
            for a=1 to b
                response.write(session.contents(a) & "<br>")
            next
        %>

        <hr>

        <%
            'Percorrer a coleção StaticObjects para ver os valores de todos os objetos armazenados no objeto Session:
            dim ii
            for each ii in session.staticObjects
                response.write(ii & "<br>")
            next
        %>

    </body>
</html>