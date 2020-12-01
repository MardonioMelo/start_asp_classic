<!-- Essa linha define que o script será lido como JavaScript -->
<!-- < %@ language="javascript" %> -->
<!DOCTYPE html>
<html>
<head>
    <title>Procedures ASP (Procedimentos)</title>
    <meta charset="utf-8" >
    <!-- VBScript
    < %     
        sub vbproc(num1,num2)
            response.write(num1*num2)
        end sub 
    %>
    -->

    <!-- JavaScript -->
    <!-- < %    
    function jsproc(num1,num2)
    {
        Response.Write(num1*num2)
    }
    %> -->

    <!-- Como chamar um procedimento JavaScript e um procedimento VBScript em um arquivo ASP. -->
    <%
    sub vbproc2(num1,num2)
        Response.Write(num1*num2)
    end sub
    %>
    <script language="javascript" runat="server">
        function jsproc2(num1,num2)
        {
            Response.Write(num1*num2)
        }
    </script>

</head>
<body>
   <a href="javascript:history.back()">Voltar</a><hr>
    <!-- VBScript -->
    <!-- <p>Você pode chamar um procedimento como este:</p> -->
    <!-- <p> Resultado: < % 'call vbproc(3,4) %> </p> -->
    <!-- <p> Ou, assim: </p> -->
    <!-- <p> Resultado: < % 'vbproc 3,4 %> </p> -->

    <!-- JavaScript -->
    <!-- <p>Resultado: < % jsproc(3,4) %> </p> -->

    <!-- Procedimentos VBScript -->

    <!-- Procedimentos Sub VBScript -->
    <%
    'Procedimentos Sub é uma serie de instruções que pode ter parâmetros mas não retorna um valor.
    Sub mysub()
        response.write("Eu fui escrito por um subprocedimento.")
    end sub
    mysub
    
    response.write("<br>")

    'Procedimento de função são instruções que pode realizar ações e retornar um valor atribuindo ao seu nome
    function myfunction()
        myfunction=Date()
    end function
    response.write("Data: "&myfunction())

    response.write("<br>")

    'Chamando um procedimento com argumentos
    function mySum(a,b)
        mySum=a+b
    end function
    response.write("Soma: "& mySum(5,9))    
    'Com a instrução call - dessa forma não funciona dentro response.write()
    call mySum(5,9)
    'sem a instrução call - dessa forma não funciona dentro response.write()
    mySum 5,9
    %>

    <!-- Como chamar um procedimento JavaScript e um procedimento VBScript em um arquivo ASP. -->
    <p>Result: <%call vbproc2(3,4)%></p>
    <p>Result: <%call jsproc2(3,4)%></p>

</body>
</html>