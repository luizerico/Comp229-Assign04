<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.WebForm2" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Literal Id="Literal1" Text="" runat="server"></asp:Literal><p></p>
    <asp:Literal Id="Literal2" Text="" runat="server"></asp:Literal>

    <asp:Panel ID="Panel_Edit" runat="server">
            <div class="form-group">
                <asp:Label runat="server" ID="lname" Text="Name:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" runat="server" ID="nameTextBox" CssClass="col-md-8 form-control" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lfaction" Text="Faction:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" runat="server" ID="factionTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lrank" Text="Rank:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="rankTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lbase" Text="Base:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="BaseTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lsize" Text="Size:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="sizeTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lzone" Text="Deployment Zone:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" runat="server" ID="deploymentZoneTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lmobility" Text="Mobility:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="mobilityTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server"  ID="lwillpower" Text="Will Power:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="willpowerTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lresiliance" Text="Resiliance:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="resilianceTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lwounds" Text="Wounds:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" TextMode="Number" runat="server" ID="woundsTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="limageurl" Text="Image URL:" CssClass="col-md-4 control-label " />
                <div class="col-md-8">
                    <asp:TextBox Text="" runat="server" ID="imageurlTextBox" CssClass="col-md-8 form-control"/>
                </div>
            </div>
            <div class="form-group">
            </div>
            <div class="form-group">
               
                <asp:Button runat="server" Text="Cancel" onClick="InsertCancelButton_Click" ID="InsertCancelButton" CausesValidation="False" CssClass="btn btn-default"/>
                <asp:Button runat="server" ID="button_submit" Text="Submit" OnClick="SaveButton_Click" CssClass="btn btn-default" />
            </div>

    </asp:Panel>
</asp:Content>
