<%
    Response.write(Time & "<br>")  
    a = 1
%>

<!-- Você não pode abrir ou fechar um delimitador de script em um arquivo INC. 
O seguinte script NÃO funcionará: -->
<%
    if a = 1 then
        <!-- #include file="tpl/header.inc" -->       
    end if
%>

<!-- Isso sim -->
<% if a = 1 then %>  
  <!-- #include file="tpl/header.inc" -->
<% end if %>