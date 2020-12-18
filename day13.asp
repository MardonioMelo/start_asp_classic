<!-- #include file="db/conn.asp" -->

<%
dim conne
'Instancia a classe
set conne = new Conn

Conne.openConnection()




Conne.closeConnection()



%>