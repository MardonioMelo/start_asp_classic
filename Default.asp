<!DOCTYPE html>
<html>
    <head>
        <title>Objeto de aplicativo ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>
        Tem
        <%
        'Armazenar e recuperar variáveis ​​de aplicativo
        Response.Write(Application("users"))
        %>
        conexões ativas.

        <hr>

        <%
            'Percorrer a coleção de conteúdos
            dim i
            for each i in Application.Contents
                Response.Write(i & "<br>")
            next

            Response.Write("<hr>")

            'Se você não souber o número de itens na coleção de conteúdo, poderá usar a propriedade Count
            dim ii
            dim j
            j=Application.Contents.Count
            for ii = 1 to j
                response.write(Application.Contents(ii) & "<br>")
            next

            Response.Write("<hr>")

            'Você pode percorrer a coleção StaticObjects para ver os valores de todos os objetos armazenados no objeto Aplicativo
            dim a
            for each a in Application.StaticObjects
                Response.Write(a & "<br>")
            next

        %>
    </body>
<html>