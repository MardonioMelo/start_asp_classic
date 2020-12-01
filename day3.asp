<!DOCTYPE html>
<html>
<head>
    <title>Condicionais ASP</title>
    <meta charset="utf-8" >
</head>
<body>
<a href="javascript:history.back()">Voltar</a><hr>
<%
'No VBScript, temos quatro instruções condicionais:
'Instrução If - executa um conjunto de códigos quando uma condição é verdadeira
'Instrução If (se) ... Then (então) ... Else (outro) - selecione um dos dois conjuntos de linhas para executar
'Instrução If ... Then ... ElseIf - selecione um dos muitos conjuntos de linhas para executar
'Instrução Select Case - selecione um dos muitos conjuntos de linhas para executar

'Uma condição verdadeira em uma linha
If i=0 Then response.write("Hello")
response.write("<hr>")

if i=10 then
    response.write("Hello")
    i = i+1
end if
response.write("<hr>")

i=hour(time)
if i < 10 then
    response.write("Bom dia!")
else
    response.write("Tenha um bom dia!")
end if
response.write("<hr>")

i=hour(time)
if i = 10 then
    response.write("Acabei de começar...!")
ElseIf i = 11 then
    response.write("Com fome!")
ElseIf i = 12 then
    response.write("Ah, hora do almoço!")
ElseIf i = 16 then
    response.write("É hora de ir para casa!")
Else
    response.write("Desconhecido")
end if
response.write("<hr>")

d=weekday(date)
Select Case d
    Case 1
        response.write("Domingo sonolento!")
    Case 2
        response.write("Segunda-feira de novo!")
    Case 3
        response.write("Apenas terça!")
    Case 4
        response.write("Quarta-feira!")
    Case 5
        response.write("Quinta feira...")
    Case 6
        response.write("Finalmente sexta-feira!")
    Case 7
        response.write("Super sábado !!!!")
End Select


%>
</body>
</html>