<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebSite.WebForm2" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" GroupItemCount="3"   >
            <AlternatingItemTemplate>
                <td runat="server" style="">
                   
                    <img src='<%# Eval("img") %>' width="100px" height="100px" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">
                    <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">img:
                    <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">
                      <img src='<%# Eval("img") %>' width="100px" height="100px" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">img:
                    <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="3">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableFlattening="False" EntitySetName="PhotoGellaries" Select="it.[img]" AutoGenerateOrderByClause="True" AutoPage="False">
        </asp:EntityDataSource>
    
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="EntityDataSource2">
            <ItemTemplate>
                name :  <%# Eval("id") %>
            </ItemTemplate>
        </asp:Repeater>
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableFlattening="False" EntitySetName="OurNews" EntityTypeFilter="OurNews">
        </asp:EntityDataSource>
    
    </div>
    </form>
</body>
</html>
