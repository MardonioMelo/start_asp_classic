<!DOCTYPE html>
<html>
<head>
    <title>Looping ASP</title>
    <meta charset="utf-8" >
</head>
<body>
<%
'Método GET têm limites na quantidade de informações a serem enviadas.
'Método POST não têm limites na quantidade de informações a serem enviadas.

'Os comandos Request.QueryString e Request.Form são usados ​​para recuperar a entrada do usuário de formulários.

'GET'
dim rget
rget = Request.QueryString("nome")
if post <> "" then
response.write(rget)
response.write("Bem vindo " & Request.QueryString("snome") & "<hr>")
end if

'POST'
dim rpost
rpost = Request.Form("nome")
if rpost <> "" then
response.write(Request.Form("nome"))
response.write("Bem vindo " & Request.Form("snome") & "<hr>")
end if
%>

<p> Método GET </p>
<form method="get" action="">
    Nome: <input type="text" name="nome" /><br>
    Sobrenome: <input type="text" name="snome" /><br><br>
    <input type="submit" value="Enviar" />
</form>

<p> Método POST </p>
<form method="post" action="">
    Nome: <input type="text" name="nome" /><br>
    Sobrenome: <input type="text" name="snome" /><br><br>
    <input type="submit" value="Enviar" />
</form>

<hr>

<p> Método GET - Outra página</p>
<form method="get" action="simplesform.asp">
    Nome: <input type="text" name="nome" /><br>
    Sobrenome: <input type="text" name="snome" /><br><br>
    <input type="submit" value="Enviar" />
</form>



<p> Método POST - Outra página</p>
<form method="post" action="simplesform.asp">
    Nome: <input type="text" name="nome" /><br>
    Sobrenome: <input type="text" name="snome" /><br><br>
    <input type="submit" value="Enviar" />
</form>






</body>
<html>