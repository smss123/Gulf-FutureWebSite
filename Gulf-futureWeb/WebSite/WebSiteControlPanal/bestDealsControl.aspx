<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="bestDealsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.bestDealsControl" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

   
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <!------------------- Kendo Ui----------------------->
   
  
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     

    

     <div class="row-fluid">
          <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Best Deals</div>
             
                    
              </div>
              <div id="x" class="k-input"> Hello Word</div>
              <div id="Grid"></div>
         </div>
     </div>


    <link href="../styles/kendo.common.min.css" rel="stylesheet" />
    <link href="../styles/kendo.metro.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.0.min.js"></script>
    <script src="../Scripts/js/kendo.web.min.js"></script>
                


         <script type="text/javascript">

             $(document).ready(function () {
                 $("#Grid").kendoGrid({
                     columns: [
                          //---------- col id
                         {
                         field: "name",
                         title: "id" 

                         },
                         //--------col contry name - en
                         {
                         field: "age",
                         title: "country name- English" 
                         },
                         {
                             //---- col en description
                             field: "",
                             title: "country Description-Engilsh"
                         },
                         {
                              //----- col country name - ar
                             field: "",
                             title:"country name-Arabic"
                         },
                         {
                             //--------- col ar decription
                             field: "",
                             title: "country Description-Arabic"

                         },
                         {
                             title :"commands"
                         }


                            ],
                     dataSource: [{ name: "Jane", age: 30 }, { name: "John", age: 33 }],
                     selectable: "row",
                     pageable: true,
                     groupable: true
                 });
                 $("#x").hide(1000);
             });
    </script>
</asp:Content>
