<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="">

    <asp:Repeater runat="server" ID="rptResults" ItemType="Comp229_Assign04.Models.Personas">
        <ItemTemplate>
            <a href="/Model.aspx?personaid=<%# Item.name %>">
                <div class="card" style="background-image: url('<%# Item.imageurl %>');">
                
                <asp:Literal ID="Literal6" runat="server" Text='<%# Item.name %>' ></asp:Literal><br />            
                <asp:Literal ID="Literal8" runat="server" Text='<%# Item.faction %>' ></asp:Literal><br />
                <%-- <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.imageurl %>' /><br />" />--%>
                </div>
             </a>
        </ItemTemplate>
    </asp:Repeater>
        </div>


    <%-- 
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DataObjectTypeName="Comp229_Assign04.Models.Personas" InsertMethod="Add" SelectMethod="GetAll" TypeName="Comp229_Assign04.Handlers.PersonaHandler">
        <SelectParameters>
            <asp:Parameter Name="ID" Type="Int32" DefaultValue="0"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
        --%>
</asp:Content>
