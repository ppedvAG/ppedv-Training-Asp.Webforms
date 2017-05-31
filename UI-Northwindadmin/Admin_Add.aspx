<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Add.aspx.cs" Inherits="UI_Northwindadmin.Admin_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Insert new Customer</h1>
    <fieldset>
        <legend>Add</legend>
        <div class="form-group">
            <label class="col-lg-2 control-label">Id</label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control" placeholder="4 Letters for unique Id"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Id is required" ControlToValidate="txtId"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="4 Letters are required all in uppercase" ValidationExpression="[A-Z]{4}" ControlToValidate="txtId"></asp:RegularExpressionValidator>
                <asp:CustomValidator runat="server" ErrorMessage="Id isn't unique" ControlToValidate="txtId" OnServerValidate="UniqueId"></asp:CustomValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-2 control-label">Company Name</label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="New Company Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="CompanyName are required" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-2 control-label">Contact Person</label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtContactName" runat="server"
                    CssClass="form-control" placeholder="Contact Details"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <label class="col-lg-2 control-label">Country</label>
            <div class="col-lg-10">
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <br />
                <asp:ValidationSummary runat="server" HeaderText="Oh snap... Change up few things and try it again" CssClass="list-group" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click" CausesValidation="false">
                        <i class="fa fa-angle-left"></i>
                        Cancel</asp:LinkButton>
                <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click">
                        <i class="fa fa-save"></i>
                        Save</asp:LinkButton>
            </div>
        </div>
    </fieldset>
</asp:Content>
