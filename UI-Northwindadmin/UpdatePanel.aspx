<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="UI_Northwindadmin.UpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Update Parts of a Website</h1>

    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="UpdateTimer" EventName="Tick" />
        </Triggers>
        <ContentTemplate>
            <h2><asp:Literal ID="ltName" runat="server"></asp:Literal></h2>
            <br /><br />

            <asp:Image ID="imgPics" runat="server" style="width:100%"/>
        </ContentTemplate>
    </asp:UpdatePanel>

    <asp:Timer ID="UpdateTimer" Interval="6000" runat="server" OnTick="UpdateImg"></asp:Timer>
    <%= DateTime.Now %>
</asp:Content>
