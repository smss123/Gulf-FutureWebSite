<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UcShowPhotoGellary.ascx.cs" Inherits="WebSite.UserControls.UcShowPhotoGellary" %>
<div style="margin-left:2%; margin-right:2%">

    <asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1" GroupItemCount="6">
    <AlternatingItemTemplate>
        <td runat="server"  >
         
              <a href='<%# Eval("img") %>' >  <img src='<%# Eval("img") %>' style="width:200px; margin:5px;  height:100px"  /> </a>
           
            <br />
        </td>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <td runat="server" style="">
            <asp:TextBox ID="imgTextBox" runat="server" Text='<%# Bind("img") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <br />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
        </td>
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

    <ItemTemplate>
       
        <td runat="server">
            
            <a href='<%# Eval("img") %>' >  <img src='<%# Eval("img") %>' style="width:200px; margin:5px; height:100px"    />    </a>  
           
            <br />
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="groupPlaceholderContainer" runat="server" border="0">
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
            <br />
        </td>
    </SelectedItemTemplate>
</asp:ListView>
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="24">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-default" />
                <asp:NumericPagerField NumericButtonCssClass="btn btn-default"  CurrentPageLabelCssClass="btn" NextPreviousButtonCssClass="btn btn-default" />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="true" ShowPreviousPageButton="true" ButtonCssClass="btn btn-default"  />
            </Fields>
        </asp:DataPager>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=dbContext" DefaultContainerName="dbContext" EnableFlattening="False" EntitySetName="PhotoGellaries" Select="it.[img]" AutoGenerateOrderByClause="True" AutoPage="False">
        </asp:EntityDataSource>

</div>