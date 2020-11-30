<!DOCTYPE html>
<html>
    <head>
        <title>ASP Incluindo Arquivos</title>
        <meta charset="UTF-8">       
    </head>
    <body>    

        <!-- Use a palavra-chave "virtual" para indicar um caminho começando com um diretório virtual. -->   
        <!-- #include virtual="/tpl/header.inc" -->

        <h3>Palavras de sabedoria: </h3>     
         <!-- Use a palavra-chave do arquivo para indicar um caminho relativo. 
        Um caminho relativo começa com o diretório que contém o arquivo incluído. -->    
        <p><!-- #include file="tpl/body.inc" --></p>
        <h3>O tempo é:</h3>
        <p><!-- #include file="time.inc"--></p>  

        <!-- #include virtual="/tpl/footer.inc" -->

        <!-- Os arquivos incluídos são processados ​​e inseridos antes que os scripts sejam executados. -->
        <!--  Um script incluído antes NÃO funcionará -->
        <!--  porque o ASP executa a diretiva include antes de atribuir um valor à variável por exemplo -->      

    </body>
</html>