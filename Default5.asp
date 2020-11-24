<!DOCTYPE html>
<html>
<head>
    <title>Formulários ASP</title>
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
if rget <> "" then
response.write("Bem vindo " & rget & " " & Request.QueryString("snome") & "<hr>")
end if

'POST'
dim rpost
rpost = Request.Form("nome")
if rpost <> "" then
response.write("Bem vindo " & rpost & " " & Request.Form("snome") & "<hr>")
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

<hr>

<%
'Como interagir com o usuário, através dos radio buttons, com o comando Request.Form.
dim cars
cars=Request.Form("cars")
%>

<form action="" method="post">
<p>Por favor selecione seu carro favorito:</p>

<input type="radio" name="cars" <%if cars="Volvo" then Response.Write("checked")%> value="Volvo">Volvo
<br>
<input type="radio" name="cars" <%if cars="Saab" then Response.Write("checked")%> value="Saab">Saab
<br>
<input type="radio" name="cars" <%if cars="BMW" then Response.Write("checked")%> value="BMW">BMW

<br><br>
<input type="submit" value="Enviar" />
</form>

<%
if cars <> "" then
   Response.Write("<p>Seu carro favorito é: " & cars & "</p>")
end if
%>

</body>
<html>