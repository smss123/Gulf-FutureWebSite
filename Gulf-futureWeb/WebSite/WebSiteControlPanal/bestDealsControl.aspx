<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="bestDealsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.bestDealsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <!------------------- Kendo Ui----------------------->
    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.default.min.css" rel="stylesheet" />
    <script src="../Scripts/js/jquery.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    
    
    

     <div class="row-fluid">
          <div class="block">
              <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Country Area</div>
              </div>
            <div id="grid" style="width:100%"></div>
              <script>             
                  var dataSource = new kendo.data.DataSource({
                      transport: {
                          read: {
                              url: "../Service/GulfService.asmx/CountryGetAll",
                              dataType: "json",
                              type:"POST"
                          }
                      },
                      pageSize: 10
                  });
                  $("#grid").kendoGrid({
                      dataSource: dataSource,
                      pageable: true,
                      columns: [
                          {
                              title:"ID",field:"Id"
                          },
                          {
                              title:"Country Name-English",field:"EnContryName"
                          },
                          {
                              title:"Country Description-English",field:"EnDescription"
                          },
                          {
                              title: "Country Name-Arabic", field: "ArContryName"
                          },
                          {
                              title: "Country Description-Arabic", field: "ArDecription"
                          },
                          {
                              
                           }, { command: ["edit", "destroy"], title: "&nbsp;", width: "160px" }]
                          
                          

                      ,
                      selectable: true,
                      editable:"popup" //"inline"
                  });
              </script>    
         </div>

         <div class="block">
             <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Cites Area</div>
              </div>


         </div>

            <div class="block">
                <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Local Area</div>
              </div>


         </div>


         <div class="block">
             <div class="navbar navbar-inner block-header">
                  <div class="muted pull-left">Best Deels Area</div>
              </div>


         </div>
     </div>


    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
                


       
</asp:Content>
