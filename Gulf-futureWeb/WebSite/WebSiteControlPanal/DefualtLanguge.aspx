<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="DefualtLanguge.aspx.cs" Inherits="WebSite.WebSiteControlPanal.DefualtLanguge" %>
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
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>arabic</asp:ListItem>
                            <asp:ListItem> english</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <div class="controls-row">
                          <asp:Button ID="BtnSave" runat="server" Text="Save"  CssClass="btn btn-primary"  OnClick="BtnSave_Click" >
                                
                          </asp:Button>
                       
                      
                    </div>
                    <asp:label runat="server" id="lblmsg"></asp:label>
                    
                </div>
            </div>

        </div>

     </div>
</asp:Content>
