<!DOCTYPE html>
<html>
    <head>
        <title>Dados da Sessão ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>
    <a href="javascript:history.back()">Voltar</a><hr>

        Bem vindo <%Response.write(Session("username"))%>    
    </body>
</html>
