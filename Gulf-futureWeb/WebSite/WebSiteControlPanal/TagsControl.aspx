<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="TagsControl.aspx.cs" Inherits="WebSite.WebSiteControlPanal.TagsControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div  class="block">
           <div class="navbar navbar-inner block-header">
                <div class="muted pull-left">Web Site Tags</div>
            </div>
            <!-- Begin Body-->
            <div class="block-content collapse in">
                <div class="controls">
                    <div class="controls-row">
                        <!-- Tags Editor-->
                        <asp:TextBox ID="txtTags" runat="server" TextMode="MultiLine" Columns="100" Rows="10" Width="60%" placeHolder="Type Tags Here .."></asp:TextBox>
                    </div>
                    <div class="controls-row">
                        <asp:Button ID="BtnSave" runat="server" Text="save" CssClass="btn btn-primary" OnClick="BtnSave_Click" />

                    </div>
                    <div class="controls-row">
                        <asp:Label runat ="server" ID="lblmsg"></asp:Label>
                    </div>
                </div>
            </div>

        </div>
          
    </div>
</asp:Content>
