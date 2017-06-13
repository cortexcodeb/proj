<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CargosCadastros.aspx.cs" Inherits="Empresa.Views.CargosCadastros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lbl_nome" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox><br />

            <asp:Label ID="lbl_descricacao" runat="server" Text="Descrição"></asp:Label>
            <asp:TextBox ID="txt_descricacao" runat="server"></asp:TextBox><br />

            <asp:Button ID="btn_salvar" runat="server" Text="SALVAR" OnClick="btn_salvar_Click" />
            <asp:Button ID="btn_cancelar" runat="server" Text="CANCELAR" OnClick="btn_cancelar_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
