<%
'Criamos o objeto de conexão
Set conn = Server.CreateObject("ADODB.Connection") 
'Abrimos uma conexão com o banco de dados - [IMPORTANTE] altere os dados abaixo com as informações de sua base de dados
serve = "localhost"
port = "3306"
db = "server"
user = "root"
pass = ""
conn.Open("DRIVER={MySQL ODBC 5.1 Driver}; SERVER="+serve+"; PORT="+port+"; DATABASE="+db+"; USER="+user+"; PASSWORD="+pass+"; Option=3")
 
response.write("Banco conectado com sucesso!<hr>")

aspSQL="select * from users"
set rs = Server.CreateObject("ADODB.recordset")
set rs = conn.Execute(aspSQL)

If rs.eof then
    response.write "Não há dados a exibir<br>"
    response.write aspSQL & "<br>Não retorna informação alguma..."
else

    Do Until rs.EOF

        for each x in rs.fields
            response.write x.name +" = "
            response.write x.value
            response.write "<br>"          
        next

        response.write "<br>"
        rs.MoveNext
    Loop

end if

conn.Close()
'Destruímos o objeto
Set conn = Nothing
%>