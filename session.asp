<!DOCTYPE html>
<html>
    <head>
        <title>Dados da Sessão ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>

        Bem vindo <%Response.write(Session("username"))%>

        <hr>

        <a href="javascript:history.back()">Voltar</a>
    </body>
</html>
