<%
    'Criar e atribuir um valor
    Response.Cookies("name")="Mardônio"
    'Definir data de expiração
    Response.Cookies("name").Expires=#May 10, 2021#    
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Cookies ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>
        <%         
           'Nota: O comando Response.Cookies deve aparecer ANTES da tag <html>.

           'Recuperar um valor de cookie
           name = Request.Cookies("name")
           response.write("Nome = " & name)

            response.write("<hr>")

           'Se um cookie contém uma coleção de vários valores, dizemos que o cookie possui Chaves.
            Response.Cookies("user")("nome")="Mardônio"
            Response.Cookies("user")("sobrenome")="Melo"
            Response.Cookies("user")("cidade")="Anápolis"
            Response.Cookies("user")("idade")="31"

            response.write("<hr>")

            'Leia todos os cookies
            dim x, y
            for each x in Request.Cookies
                response.write("<p>")
                'Verifica se um cookie possui Chaves com a propriedade HasKeys
                if Request.Cookies(x).Haskeys then
                    for each y in Request.Cookies(x)
                        response.write(x & ":" & y & "=" & Request.Cookies(x)(y))
                        response.write("<br>")
                    next
                else
                    Response.Write(x & "=" & Request.Cookies(x) & "<br>")
                end if
                response.write("</p>")
            next

            'E se um navegador NÃO for compatível com cookies?
            'Adicionar parâmetros a um URL (GET)
            'ou
            'Use um formulário (POST)

             response.write("<hr>")

            'Como criar um cookie de boas-vindas.'
            dim numvisits
            response.cookies("NumVisits").Expires=date+365
            numvisits=request.cookies("NumVisits")

            if numvisits="" then
                response.cookies("NumVisits")=1
                response.write("Bem-vinda! Esta é a primeira vez que você visita esta página da Web.")
            else
                response.cookies("NumVisits")=numvisits+1
                response.write("Você visitou essa ")
                response.write("página da web " & numvisits)

                if numvisits=1 then
                    response.write " vez antes!"
                else
                    response.write " vez depois!"
                end if
            end if
        %>
    </body>
</html>