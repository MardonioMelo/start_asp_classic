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

            Response.Write("<hr>")
        %>

        <% 
            'Você pode bloquear um aplicativo com o método "Lock". 
            'Quando um aplicativo está bloqueado, os usuários não podem alterar as variáveis ​​do aplicativo 
            '(exceto aquela que o está acessando atualmente).
            'Você pode desbloquear um aplicativo com o método "Unlock". Este método remove o bloqueio da variável do aplicativo'
        
            Application.Lock  
            'No exemplo a seguir, o método Lock evita que mais de um cliente por vez acessem a variável NumVisits. 
            'Se o aplicativo não tivesse sido bloqueado, dois clientes poderiam tentar simultaneamente incrementar a variável NumVisits.
            Application("NumVisits") = Application("NumVisits") + 1  
            Application("datLastVisited") = Now()  
            Application.Unlock  
        %>  

        Esta página do aplicativo foi visitada  
        <% Response.Write(Application("NumVisits")) %>  vezes! 

    </body>
<html>