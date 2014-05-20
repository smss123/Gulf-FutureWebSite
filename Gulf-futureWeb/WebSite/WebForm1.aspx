<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebSite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/kendo.common.min.css" rel="stylesheet" />
    <link href="styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.0.min.js"></script>
    <script src="Scripts/js/kendo.web.min.js"></script>

    <script src="Scripts/js/kendo.data.odata.min.js"></script>
    <script src="Scripts/js/kendo.data.min.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
           
            $("#Grid").kendoGrid({
                columns: [{
                    field: "name",// create a column bound to the "name" field
                    title: "Name" // set its title to "Name"
                }, {
                    field: "age",// create a column bound to the "age" field
                    title: "Age" // set its title to "Age"
                }],
                dataSource: [{ name: "Jane", age: 30 }, { name: "John", age: 33 }]
            });

            $("#x").hide(1000);

        });
    </script>    
  
</head>
<body>
    <form id="form1" runat="server">
    <div id="Grid">
    


        <script>
            $(document).ready(function () {
                $("#grid").kendoGrid({
                    dataSource: {
                        type: "odata",
                        transport: {
                            read: "http://localhost:3787/Service/testWeb.asmx/GetAll"
                        },
                        pageSize: 10
                    },
                    height: 280,
                    columns: ["Id"]
                });
            });
            </script>
            <div id="grid">
            </div>

    </div>
        <div id="x">samer abd ulla</div>
    </form>

      <div id="dialog"></div>
    <script>
        $("#dialog").kendoWindow({
            actions: ["Minimize", "Maximize"]
            , content: "/details"
        });
    </script>
</body>
</html>
