<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validators.aspx.cs" Inherits="UI_Northwindadmin.Validators" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <h1>Validatoren</h1>


        <%------------------------------------------------Compare Validator----------------------------------------------------%>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Compare Validator</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="Compare1" placeholder="Are we equal?"></asp:TextBox>
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="Compare2" placeholder="Are we equal?"></asp:TextBox>
                <asp:CompareValidator runat="server" ErrorMessage="Not equal" ControlToValidate="Compare1" ControlToCompare="Compare2"></asp:CompareValidator>
            </div>
        </div>


        <%---------------------------------------------Customvalidator Client--------------------------------------------------%>
        <div class="form-group">
            <label for="inputPassword" class="col-lg-2 control-label">CustomValidator Clientseitig</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="CVClient" placeholder="CV Client more than 8 Letters"></asp:TextBox>
                <asp:CustomValidator runat="server" ClientValidationFunction="CvClient" ControlToValidate="CVClient" EnableClientScript="true" Display="Dynamic" ErrorMessage="To less letters"></asp:CustomValidator>
            </div>
        </div>


        <%---------------------------------------------Customvalidator Server--------------------------------------------------%>
        <div class="form-group">
            <label for="inputPassword" class="col-lg-2 control-label">CustomValidator Serverseitig</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="CVServer" placeholder="CV Server more than 8 Letters"></asp:TextBox>
                <asp:CustomValidator runat="server" OnServerValidate="CvServer" ControlToValidate="CVServer" Display="Dynamic" ErrorMessage="To less letters"></asp:CustomValidator>
            
            </div>
        </div>


        <%------------------------------------------------Range Validator ----------------------------------------------------%>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Range Validator</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="Range" placeholder="from 1 to 100"></asp:TextBox>
                <asp:RangeValidator runat="server" ErrorMessage="Not in Range" ControlToValidate="Range" MinimumValue="1" MaximumValue="100" Type="Integer"></asp:RangeValidator>
            </div>
        </div>


        <%-------------------------------------------RegularExpression Validator ---------------------------------------------%>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">RegularExpression Validaort</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="Regular" placeholder="RegularExpression ZipCode"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Not Regular" ControlToValidate="Regular"
                    ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>
            </div>
        </div>



        <%---------------------------------------------RequiredFild Validator ------------------------------------------------%>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">RequiredFild Validator</label>
            <div class="col-lg-10">
                <asp:TextBox runat="server" type="text" CssClass="form-control" ID="Required" placeholder="I'm required"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="I'm required!" ControlToValidate="Required"></asp:RequiredFieldValidator>
            </div>
        </div>


        <%------------------------------------------------Validation Summary---------------------------------------------------%>
        <div class="form-group">
            <label for="inputEmail" class="col-lg-2 control-label">Validation Summary</label>
            <div class="col-lg-10">
                <asp:ValidationSummary ShowSummary="true" HeaderText="Check following fields" DisplayMode="List" runat="server" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <%----------------------Button frei schalten------------------------%>
                <asp:Button runat="server" CausesValidation="false" class="btn btn-default" Text="Cancel"></asp:Button>
                <asp:Button runat="server"  class="btn btn-primary" Text="Submit"></asp:Button>
            </div>
        </div>
    </div>
    <script>
        function CvClient(sender, args) {
            console.info(args.Value.length);
            if (args.Value.length < 8) {
                args.IsValid = false;
            } else {
                args.IsValid = true;
            }
        }
    </script>
</asp:Content>
