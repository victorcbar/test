<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeginaPagina.aspx.cs" Inherits="PaginaUno.SeginaPagina" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>

    <style type="text/css">
      ggg
        table#gvDetails {
            border-collapse: collapse;   
        }
        #gvDetails tr {
            background-color: #eee;
            border-top: 1px solid #fff;
        }
        #gvDetails tr:hover {
            background-color: #ccc;
        }
        #gvDetails th {
            background-color: #fff;
        }
        #gvDetails th, #gvDetails td {
            padding: 3px 5px;
        }
        #gvDetails td:hover {
            cursor: pointer;
        }
        
    </style>
    <script type="text/javascript">
        function alertd(obj) {

            alert("Diste clic sobre: " + obj);
            /*
            $(obj).find('td').each(function () {
                alert($(this).text());
                
            }); 
            */
        }

        function jsClic() 
        {
            var objJson = 
            [
                {nombre: 'victor',apPaterno: 'cruz',apMaterno: 'barbis',fechaNacimiento: '25-02-1989'},
                { nombre: 'Lesly', apPaterno: 'Rojas', apMaterno: 'Santinelli', fechaNacimiento: '08-12-1989' }
            ];

            $("#gvDetails").append("<tr class='headerTable'><th>Username</th><th>Firstname</th>  <th>Lastname</th> <th>EmailID</th></tr>");

            $.each(objJson, function (i, item) 
            {
                $("#gvDetails").append("<tr class='rowHover' onclick='alertd(\"" + item.nombre.toString() + "\")'><td>" +
                item.nombre + "</td> <td>" +
                item.apPaterno + "</td> <td>" +
                item.apMaterno + "</td> <td>" +
                item.fechaNacimiento + "</td></tr>");
            });

            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="btnClic" runat="server" Text="Clic" OnClientClick="javascript:return jsClic()" />

    <br />
    <asp:GridView ID="table" runat="server">
    </asp:GridView>
    <table id="gvDetails">

    </table>
    </form>
</body>
</html>
