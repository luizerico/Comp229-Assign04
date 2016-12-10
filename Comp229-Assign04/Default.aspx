<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    ----
    <p>
    <asp:Literal ID="Literal2" runat="server"></asp:Literal>
    </p>
    ----
    ----
    <p>
    <asp:Literal ID="Literal3" runat="server"></asp:Literal>
    </p>
    ----
    <p>
    <asp:Literal ID="Literal4" runat="server"></asp:Literal>
    </p>

    <p>
        
        <asp:Literal ID="Literal6" runat="server" Text="" ></asp:Literal>
        <asp:Literal ID="Literal5" runat="server" Text="" ></asp:Literal>
    </p>
    <p>
    <asp:Literal ID="Literal7" runat="server"></asp:Literal>
    </p>
    <asp:Repeater runat="server" ID="rptResults" ItemType="Comp229_Assign04.Models.Personas">
        <ItemTemplate>
            <asp:Literal ID="Literal6" runat="server" Text='<%# Item.name %>' ></asp:Literal>
            <br />
            <asp:Literal ID="Literal8" runat="server" Text='<%# Item.faction %>' ></asp:Literal><br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.imageurl %>' /><br />" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
