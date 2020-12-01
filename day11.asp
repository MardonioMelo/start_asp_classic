<!DOCTYPE html>
<html>
    <head>
        <title>Ajax com ASP</title>
        <meta charset="UTF-8">    
        
        <script>
            function showHint(str) {
                if (str.length == 0) {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                } else {
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.onreadystatechange = function() {
                        if (this.readyState == 4 && this.status == 200) {
                            document.getElementById("txtHint").innerHTML = this.responseText;
                        }
                    };
                    xmlhttp.open("GET", "gethint.asp?q=" + str, true);
                    xmlhttp.send();
                }
            }

            function showCustomer(str) {
                if (str=="")
                {
                document.getElementById("txtHint").innerHTML="";
                return;
                }
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                if (this.readyState==4 && this.status==200)
                    {
                    document.getElementById("txtHint").innerHTML=this.responseText;
                    }
                }
                xmlhttp.open("GET","getcustomer.asp?q="+str,true);
                xmlhttp.send();
            }
        </script>

    </head>
    <body>
        <a href="javascript:history.back()">Voltar</a><hr>

        <p><b>Comece digitando um nome no campo de entrada abaixo:</b></p>
        <form>
            Primeiro nome: <input type="text" onkeyup="showHint(this.value)">
        </form>
        <p>Sugestões: <span id="txtHint"></span></p>

        <form>
            <select name="customers" onchange="showCustomer(this.value)">
                <option value="">Select a customer:</option>
                <option value="ALFKI">Alfreds Futterkiste</option>
                <option value="NORTS ">North/South</option>
                <option value="WOLZA">Wolski Zajazd</option>
            </select>
        </form>

    </body>
</html>