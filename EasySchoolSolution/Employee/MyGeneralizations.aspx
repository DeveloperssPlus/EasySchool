<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyGeneralizations.aspx.cs" Inherits="Employee_MyGeneralizations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12 portlets">
        <div class="panel">
            <div class="panel-header">
                <h3><i class="icon-bulb"></i><strong>التعاميم</strong> </h3>
            </div>
            <div class="panel-content">
                <asp:ListView ID="LstMyGeneralizations"  OnDataBinding="LstMyGeneralizations_DataBinding" runat="server">

                    <LayoutTemplate>
                        <table class="table table-hover table-dynamic">
                            <thead>
                                <tr>
                                    <th>
                                        <div class="m-b-10">التاريخ</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">رقم التعميم</div>
                                    </th>
                                    <th>
                                        <div class="m-b-10">الجهة الوارد منها التعميم</div>
                                    </th>
                                    <%--<th></th>--%>
                                </tr>
                            </thead>

                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <tr>
                         <%--   <td>
                                <asp:Label ID="lblcheck" CssClass="fa fa-check" runat="server" Style="font-size: 25px; color: green"></asp:Label>

                            </td>--%>
                            <td> <%# MyDate.getDate(Eval("Date").ToString() )%></td>
                            <td>
                                <%--<asp:HiddenField ID="IncomingId" runat="server" Value='<%# Eval("IncomingId") %>' />--%>
                                <a href="/Communication/IncomingDetails.aspx?id=<%# Eval("IncomingId") %>">
                                    <%# Eval("Number") %>
                                </a>
                            </td>
                            <td>
                                <%# ConstantManager.getConstant((int)Eval("Source")) %>
                            </td>

                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h2>لايوجد تعاميم</h2>
                    </EmptyDataTemplate>



                </asp:ListView>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

