<!DOCTYPE html>
<html>
    <head>
        <title>Sintaxe e Variáveis ASP</title>
        <meta charset="UTF-8">
        <style>
           body{
               background-color: "#f1f1f1";             
           }
        </style>
    </head>
    <body>
        <%
        'Força a declarar todas as variáveis como dim, public ou private.
        'Mas só quando não dentro do HTML
        'Option Explicit

        Response.Write("Olá Mundo!") 
         Response.Write("<hr>") 

        ' Declarar variável
        dim frase     
        frase = "<p style='color:#0000ff' >Texto formatado</p>"
        Response.Write(frase)      
        
        Response.Write("<hr>") 
      
        ' Criar Array
        dim nomes(6), i
        nomes(0) = "Jean"
        nomes(1) = "mardonio"
        nomes(2) = "Maria"
        nomes(3) = "Ramyla"
        nomes(4) = "Nega"
        nomes(5) = "Caneca"
        nomes(6) = "Outros"
        For i = 0 To 6
            Response.Write(nomes(i) & "<br>")
        Next

        ' Percorrer cabeçalhos HTML
        dim i2
        for i2 = 1 to 6
            response.write("<h" & i2 & ">Heading " & i2 & "</h" & i2 & ">")
        next

        ' Saudação baseada em hora usando VBScript
        dim h
        h = hour(now())     
        response.write("<p>" & now())   
        response.write("</p>")
        If h < 12 then
            response.write("Bom dia!")
        elseIf h < 18 then
            response.write("Boa tarde!")
        else
            response.write("Boa noite!")
        end If

        dim name
        name = "<br> Mardonio"
        response.write(name)
        response.write("<br>")
        name = "Love"
        response.write(name)

        ' Array bidimensional
        Dim table(4,6) 'Aqui temos uma matriz bidimensional que consiste em 5 linhas e 7 colunas
        Dim x(2,2)
        x(0,0)="Volvo"
        x(0,1)="BMW"
        x(0,2)="Ford"
        x(1,0)="Apple"
        x(1,1)="Orange"
        x(1,2)="Banana"
        x(2,0)="Coke"
        x(2,1)="Pepsi"
        x(2,2)="Sprite"
        for i=0 to 2
            response.write("<p>")
            for j=0 to 2
                response.write(x(i,j) & "<br />")
            next
            response.write("</p>")
        next
              
        Response.Write("<hr>") 
        response.write("Variáveis de sessão e variáveis de aplicativo são outros tipos de variáveis")  

        %>
    </body>    
</hrml>
