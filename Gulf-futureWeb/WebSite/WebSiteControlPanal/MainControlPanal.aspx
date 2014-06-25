<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteControlPanal/ControlPanalMasterPage.Master" AutoEventWireup="true" CodeBehind="MainControlPanal.aspx.cs" Inherits="WebSite.WebSiteControlPanal.MainControlPanal" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
    </telerik:RadStyleSheetManager>
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
            </asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>


      <asp:Label runat="server" ID="lblmsg"></asp:Label>
        <div class="block">
            <div class="navbar navbar-inner block-header">
                <div class="muted pull-left"><b>Admin word</b>-Arabic</div>
            </div>



            <div class="controls-row">

              
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="AdminTelk" DefaultMode="Edit">
                            <EditItemTemplate>  
                               
                                <br />


                                   Admin Talk-Arabic
                                <div class="controls-row">
                                    
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <telerik:RadEditor runat="server" ID="ArAdminTelk" SkinID="DefaultSetOfTools" Height="675px" Width="60%" Content='<%#Bind("ArAdminTalk")%>'>
                                                <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    EnableAsyncUpload="true"></ImageManager>
                                            </telerik:RadEditor>
                                        </ContentTemplate>

                                    </asp:UpdatePanel>

                                </div>
                                <br />
                                   Admin Talk-English
                                <div class="controls-row">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <telerik:RadEditor runat="server" ID="ArtxtAdminTelk" SkinID="DefaultSetOfTools" Height="675px" Width="60%" Content='<%#Bind("EnAdminTalk")%>'>
                                                <ImageManager ViewPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    UploadPaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    DeletePaths="~/Resources/Uploads/Editos,~/Resources/Uploads/Editos"
                                                    EnableAsyncUpload="true"></ImageManager>
                                            </telerik:RadEditor>
                                        </ContentTemplate>

                                    </asp:UpdatePanel>
                                </div>
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn" />
                            </EditItemTemplate>
                            
                            
                        </asp:FormView>
                        <asp:EntityDataSource ID="AdminTelk" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableDelete="True" EnableFlattening="False" EnableUpdate="True" EntitySetName="WebSiteInfoes">
                        </asp:EntityDataSource>
                 

            </div>
        </div>
    
        

</asp:Content>
