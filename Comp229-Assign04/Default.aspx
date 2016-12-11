<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="">

    <asp:Repeater runat="server" ID="rptResults" ItemType="Comp229_Assign04.Models.Personas">
        <ItemTemplate>
            <a href="/Model.aspx?personaid=<%# Item.name %>">
                <div class="card" style="background-image: url('<%# Item.imageurl %>');">
                
                <h4 style="text-align:center;"><asp:Literal ID="Literal6" runat="server" Text='<%# Item.name %>' ></asp:Literal></h4>         
                <asp:Literal ID="Literal8" runat="server" Text='<%# Item.faction %>' ></asp:Literal><br />
                <asp:Literal ID="Literal1" runat="server" Text='<%# Item.rank %>' ></asp:Literal><br />                      
                <asp:Literal ID="Literal3" runat="server" Text='<%# Item.Base %>' ></asp:Literal><br />                      
                <asp:Literal ID="Literal2" runat="server" Text='<%# Item.size %>' ></asp:Literal><br />

                <asp:Literal ID="Literal4" runat="server" Text='<%# Item.mobility %>' ></asp:Literal><br />                      
                <asp:Literal ID="Literal5" runat="server" Text='<%# Item.resiliance %>' ></asp:Literal><br />                      
                <asp:Literal ID="Literal7" runat="server" Text='<%# Item.willpower %>' ></asp:Literal><b></b>
                <asp:Literal ID="Literal9" runat="server" Text='<%# Item.wounds %>' ></asp:Literal><br />

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
