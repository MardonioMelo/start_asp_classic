<!DOCTYPE html>
<html>
<head>
    <title>Resposta do Formulário</title>
    <meta charset="utf-8" >
</head>
    <body>
    <a href="javascript:history.back()">Voltar</a><hr>

    Bem vindo

    <%
    'Os comandos Request.QueryString e Request.Form são usados ​​para recuperar a entrada do usuário de formulários.

    'GET'
    response.write(Request.QueryString("nome"))
    response.write(" " & Request.QueryString("snome"))

    'POST'
    response.write(Request.Form("nome"))
    response.write(" " & Request.Form("snome"))

    %>
    </body>
</html>