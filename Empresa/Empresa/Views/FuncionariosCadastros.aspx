<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FuncionariosCadastros.aspx.cs" Inherits="Empresa.Views.FuncionariosCadastros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>FUNCIONARIO CADASTRO</h1>
            <asp:Label ID="lbl_nome" runat="server" Text="Nome: "></asp:Label>
            <asp:TextBox ID="txt_nome" runat="server"></asp:TextBox><br />
            <asp:Label ID="lbl_telefone" runat="server" Text="Telefone"></asp:Label>
            <asp:TextBox ID="txt_telefone" runat="server"></asp:TextBox><br />
            <asp:Label ID="lbl_cargo" runat="server" Text="Nome do Cargo: "></asp:Label>
            <asp:TextBox ID="txt_cargo" runat="server"></asp:TextBox><br />
            <asp:Button ID="btn_salvar" runat="server" Text="Salvar" OnClick="btn_salvar_Click" />
            <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="btn_cancelar_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
