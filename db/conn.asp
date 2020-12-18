<%
Class Conn      

    'Abrimos uma conexão com o banco de dados    
    Sub openConnection()
        
        'Altere os dados abaixo com as informações de sua base de dados    
        drive = "{MySQL ODBC 5.1 Driver}"
        host = "localhost"
        port = "3306"
        db = "server"
        user = "root"
        pass = ""   
       
        set conex = CreateObject("ADODB.Connection")          
        conex.Open("Driver="+drive+"; Server="+host+"; Port="+port+"; Database="+db+"; User="+user+"; Password="+pass+"; Option=3")

    end Sub   
    
    'Função que fecha a conexão com o banco de dados
    Sub closeConnection()
        if conex.State = 0 Then conex.Close()
       '' Set conex = Nothing 'destruir objeto
    end Sub 

End Class
%>