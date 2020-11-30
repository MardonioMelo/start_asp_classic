<!DOCTYPE html>
<html>
    <head>
        <title>O aquivo Global.asa ASP</title>
        <meta charset="UTF-8">       
    </head>
    <body>
        <!-- Um dos valores de um objeto declarado no Global.asa -->
        <%=MyBrow.cookies%>
        <hr>
        <%=session("started")%>
        <hr>
        Para exibir o número de visitantes atuais: 
       Tem <% response.write(Application("visitors")) %> online agora!
    </body>
</html>

