<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Counciles.aspx.cs" Inherits="School_Counciles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-tasks"></i>&nbsp; المجالس</h5>
        </div>
        <div class="panel-content">
            <table class="table  table-hover table-dynamic dataTable" id="table-editable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الموظف</th>
                       
                       <td></td>
                    </tr>
                </thead>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ListView ID="lstCounciles" runat="server" OnDataBinding="lstCounciles_DataBinding" OnItemCommand="lstCounciles_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                       <a href="CouncileMember.aspx?CouncileID=<%#Eval("Id") %>"><%# Eval("Name") %></a>
                                    </td>
                                    <td>
                                        <a runat="server" id="btnPrint" href='<%#Eval("FileLocation","../{0}") %>' target="_blank" title="طباعة"><i class="fa fa-print p-10"></i></a>
                                         </td>
                                </tr>
                            </ItemTemplate>
                        </asp:ListView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
        <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

