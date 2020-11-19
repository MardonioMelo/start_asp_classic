<!DOCTYPE html>
<html>
<head>
    <title>Looping ASP</title>
    <meta charset="utf-8" >
</head>
<body>
<%
'No VBScript, temos quatro instruções de loop:
'For...Next statement - executa o código um número especificado de vezes
'For Each...Next statement - executa o código para cada item em uma coleção ou cada elemento de uma matriz
'Do...Loop statement - faz um loop durante ou até que uma condição seja verdadeira
'While...Wend statement - Não use - use a instrução Do ... Loop em vez disso

'For ... Next Loop'
for i = 0 to 5
    response.write("O número é " & i & "<br/>")
next
response.write("<hr>")

'Com a palavra-chave Step , você pode aumentar ou diminuir a variável do contador pelo valor que você especificar.'
for i=2 to 10 step 2
    response.write("O número é " & i & "<br/>")
next
response.write("<hr>")

'Para diminuir a variável do contador, você deve usar um valor Step negativo . Você deve especificar um valor final que seja menor que o valor inicial.
for i=10 to 2 step -2
    response.write("O número é " & i & "<br/>")
next
response.write("<hr>")

'Você pode sair de uma instrução For ... Next com a palavra-chave Exit For.'
for i=1 to 10
    if i=5 then exit for
    response.write("O número é " & i & "<br/>")
next
response.write("<hr>")

'For Each...Next
dim cars(2)
cars(0) = "volvo"
cars(1) = "Saab"
cars(2) = "BMW"

for each x in cars
    response.write(x & "<br>")
next
response.write("<hr>")

'Se você não souber quantas repetições deseja, use uma instrução Do ... Loop.
Do While i > 10
    response.write(i & "<br>")
Loop
'Se i for igual a 9, o código dentro do loop acima nunca será executado.
response.write("<hr>")

'O código dentro deste loop será executado pelo menos uma vez, mesmo se i for menor que 10.
do
    response.write(i & "<br>")
loop While i > 10
response.write("<hr>")

'Repita o código até que uma condição se torne verdadeira'
do until i=10
    response.write(i & "<br>")
    i = 10 'se comentar essa linha o loop ficará infinito
loop
response.write("<hr>")

'O código dentro deste loop será executado pelo menos uma vez, mesmo se i for igual a 10.
do
    response.write(i & "<br>")
loop until i=10
response.write("<hr>")

'Você pode sair de uma instrução Do ... Loop com a palavra-chave Exit Do.
do until i=10
    i=1-1
    response.write(i & "<br>")
    if i<10 then exit do 
    'O código dentro desse loop será executado enquanto i for diferente de 10 e enquanto i for maior que 10.'  
loop
response.write("<hr>")

'Como fazer um loop pelos seis cabeçalhos em html.
for i=1 to 6
    response.write("<h" & i & ">Este é um título " & i & "</h" & i & ">")
next

'Como fazer um loop Do ... While simples .
i=0
do While i < 10
    response.write(i & "<br>")
    i=i+1
loop

%>
</body>
</html>