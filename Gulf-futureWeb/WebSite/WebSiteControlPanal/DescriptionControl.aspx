<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="DescriptionControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.DescriptionControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row-fluid">
         


         <!--Begin Block-->
          <div  class="block">
           <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Web Site Tags</div>
            </div>
            <!-- Begin Body-->
            <div class="block-content collapse in">
                <div class="controls">
                    <div class="controls-row">
                        <!-- Description Editor-->
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Columns="100" Rows="10" Width="60%" placeHolder="Type Tags Here .."></asp:TextBox>
                    </div>
                    <div class="controls-row">
                        <asp:Button ID="BtnSave" runat="server" Text="save" CssClass="btn btn-primary" OnClick="BtnSave_Click" />

                    </div>
                </div>
            </div>

        </div>
         <!---End Block--->

     </div>
</asp:Content>
