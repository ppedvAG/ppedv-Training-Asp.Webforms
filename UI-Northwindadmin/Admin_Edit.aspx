<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_Edit.aspx.cs" Inherits="UI_Northwindadmin.Admin_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <asp:Label ID="HeadingCompanyName" runat="server"></asp:Label>
    </h1>
    <fieldset>
        <legend><asp:Label ID="Label1" runat="server"></asp:Label></legend>    <%-- Text="Edit"--%>    
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-lg-2 control-label">Company Name</asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="New Company Name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="Company Name is required" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="Server" class="col-lg-2 control-label">Contact Person</asp:Label>
            <div class="col-lg-10">
                <asp:TextBox ID="txtContactName" runat="server"
                    CssClass="form-control" placeholder="Contact Details"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" class="col-lg-2 control-label">Country</asp:Label>
            <div class="col-lg-10">
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-lg-2 control-label"></label>
            <div class="col-lg-10">
                <asp:ValidationSummary runat="server" HeaderText="Oh snap... Change up few things and try it again" CssClass="list-group" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <asp:LinkButton ID="btnCancel" runat="server" CssClass="btn btn-default" OnClick="btnCancel_Click"  CausesValidation="false">
                        <i class="fa fa-angle-left"></i>
                        Cancel</asp:LinkButton>
                <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click">
                        <i class="fa fa-save"></i>
                        Save</asp:LinkButton>
            </div>
        </div>
    </fieldset>
</asp:Content>
