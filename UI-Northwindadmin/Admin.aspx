<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="UI_Northwindadmin.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <asp:Literal Text="Customers Administration" runat="server" />
    </h1>

    <asp:HyperLink runat="server" NavigateUrl="~/Admin_Add.aspx"
        CssClass="btn btn-default btn-block" Style="margin: 15px auto">Add Customer</asp:HyperLink>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>
                    <asp:Literal Text="No." runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="Company Name" runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="Contact Person" runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="Address" runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="City" runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="Phone" runat="server"></asp:Literal></th>
                <th>
                    <asp:Literal Text="#" runat="server"></asp:Literal></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <a href='Admin_Edit.aspx?Id='>
                        <i class='fa fa-pencil'></i>
                    </a>
                </td>
            </tr>
            <asp:ListView ID="CustomersList" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Container.DataItemIndex + 1 %></td>
                        <td><%#Eval("CompanyName")%></td>
                        <td><%#Eval("ContactName")%></td>
                        <td><%#Eval("Address")%></td>
                        <td><%#Eval("City")%></td>
                        <td><%#Eval("Phone")%></td>
                        <td>
                            <asp:HyperLink runat="server" Target="_parent" NavigateUrl='<%# "Admin_Edit.aspx?Id="+ Eval("CustomerId") %>'>
                                <i class="fa fa-pencil"></i>
                            </asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>

</asp:Content>
