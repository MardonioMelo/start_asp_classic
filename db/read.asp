
<%

 'Definição de variáveis que serão utilizadas para guardar as informações que serão digitadas.
dim drive, host, port, db, user, pass

Private RS 'Variável do recordset
Private SQL 'Varável que terá o terno do que foi gravado

Private Sub openConnection
    set Conex = CreateObject("ADODB.Connection")
    set RS = CreateObject("ADODB.Recordset")
    Conex.Open(drive+"; Server="+host+"; Port="+port+"; Database="+db+"; User="+user+"; Password="+pass+"; Option=3")
end Sub

query = "SELECT * FROM users"
set rs = read.CreateObject("ADODB.recordset")
set rs = conn.Execute(query)

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

%>
