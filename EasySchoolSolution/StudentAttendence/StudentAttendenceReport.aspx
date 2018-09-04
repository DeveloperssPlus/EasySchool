<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentAttendenceReport.aspx.cs" Inherits="EmployeeAttendence_AttendenceReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .widget-infobox .infobox {
            float: right;
        }
        .main-content .page-content .panel .panel-header h3 {
            margin-bottom: 0px;
            margin-top: 0px;
        }
        .inline {
            display: inline;
            margin: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <h3><strong>تقرير الحضور اليومي</strong></h3>

    <div class="row">
        <div class="col-md-12">
            <div class="widget-infobox" style="margin: auto; float: none;">
                <div class="row">
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-shopping-cart bg-blue"></i>
                        </div>
                        <div class="right">
                            <div>
                                <span class="c-primary pull-left">
                                    <asp:Label ID="lblAll" runat="server"></asp:Label></span>
                                <%--<span class="c-primary pull-right">8%</span>--%>
                            </div>
                            <div class="txt">الطلاب</div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-rocket bg-red"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-red pull-left">
                                        <asp:Label ID="lblAttendence" runat="server"></asp:Label></span>
                                    <%--<span class="c-red pull-right">6%</span>--%>
                                </div>
                                <div class="txt">الحضور</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-bug bg-green"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-green pull-left">
                                        <asp:Label ID="lblAbsence" runat="server"></asp:Label></span>
                                    <%--<span class="c-green pull-right">6%</span>--%>
                                </div>
                                <div class="txt">الغياب</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="icon-picture bg-purple"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-purple pull-left">
                                        <asp:Label ID="lblLateness" runat="server"></asp:Label></span>
                                    <%--<span class="c-primary pull-right">18%</span>--%>
                                </div>
                                <div class="txt">التأخر</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="icon-picture bg-orange"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-orange pull-left">
                                        <asp:Label ID="lblPermission" runat="server">0</asp:Label></span>
                                    <%--<span class="c-primary pull-right">18%</span>--%>
                                </div>
                                <div class="txt">الاستئذان</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-6">
            <div class="panel">
                <div class="panel-header bg-green">
                    <h3><i class="icon-graph"></i><strong>الغياب</strong> اليومي</h3>
                </div>
                <div class="panel-content">
                    <asp:PlaceHolder ID="PlaceHolderAbsence" runat="server">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>الاسم</th>
                                    <th>سبب الغياب</th>
                                    <th>مساءلة</th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:ListView ID="lvAbsence" runat="server" OnDataBinding="lvAbsence_DataBinding">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#getCounter() %></td>
                                            <td><%#Eval("Name")%></td>
                                           <td> <%#ConstantManager.getConstant(int.Parse(Eval("Type").ToString()))%></td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton1" CommandName="preview" runat="server"><i class="fa fa-eye inline"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" CommandName="print" runat="server"><i class="fa fa-print inline"></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        لا يوجد غياب
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                    </asp:PlaceHolder>
                    <asp:Literal ID="ltrNoAbcence" runat="server"></asp:Literal>
                   
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel">
                <div class="panel-header bg-purple">
                    <h3><i class="icon-graph"></i><strong>التأخر</strong> اليومي</h3>
                </div>
                <div class="panel-content">
                    <asp:PlaceHolder ID="PlaceHolderLateness" runat="server">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>الاسم</th>
                                    <th>التأخر</th>
                                    <%--<th>مساءلة</th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                  <% setCounter(); %>
                                <asp:ListView ID="lvLatenesses" runat="server" OnDataBinding="lvLatenesses_DataBinding">
                                    <ItemTemplate>
                                        <tr>                                          
                                            <td><%#getCounter() %></td>
                                            <td><%#Eval("stdName")%></td>

                                            <td><%# TimeSpan.FromSeconds((double)Eval("totalSeconds")).ToString()%></td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        لا يوجد تأخر
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                    </asp:PlaceHolder>
                    <asp:Literal ID="ltrNoLateness" runat="server"></asp:Literal>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-header bg-primary">
                    <h3><i class="icon-graph"></i><strong>التنبيهات </strong>الشفوية</h3>
                </div>
                <div class="panel-content">
                    <asp:PlaceHolder ID="PlaceHolderAlerts" runat="server">
                        <table class="table table-striped">
                            <%--            
                                  <thead>
                                <tr>
                                    <th>#</th>
                                    <th>الاسم</th>
                                    <th>التأخر</th>
                                  <th>مساءلة</th>
                                </tr>
                            </thead>--%>
                            <tbody>
                                <asp:ListView ID="lvAlerts" runat="server" OnDataBinding="lvAlerts_DataBinding">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:PlaceHolder ID="PlaceHolderAlertLate" runat="server" Visible='<%# Convert.ToBoolean(Eval("isLate"))%>'>لقد تجاوز تأخر 
                                                <span style="color: brown">
                                                    <%#Eval("stdName")%>
                                                </span>
                                                    الساعتين خلال العام و قد بلغ تأخره 
                                                <%# TimeSpan.FromSeconds((double)Eval("totalSeconds")).ToString()%>
                                                </asp:PlaceHolder>

                                                <asp:PlaceHolder ID="PlaceHolderAlertPermission" runat="server" Visible='<%# !Convert.ToBoolean(Eval("isLate"))%>'>لقد تجاوز استئذان 
                                                <span style="color: brown">
                                                    <%#Eval("stdName")%>
                                                </span>
                                                    الساعتين خلال العام و قد بلغ استئذانه 
                                                <%# TimeSpan.FromSeconds((double)Eval("totalSeconds")).ToString()%>
                                                </asp:PlaceHolder>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        لا يوجد تنبيهات.
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                    </asp:PlaceHolder>
                    <asp:Literal ID="ltrNoAlerts" runat="server"></asp:Literal>
                </div>

            </div>
        </div>
    </div>

<%--    <div class="row">
        <div class="col-md-7">
            <div class="panel">
                <div class="panel-header bg-orange">
                    <h3><i class="icon-graph"></i><strong>التنبيهات </strong>المطبوعة</h3>
                </div>
                <div class="panel-content">
                    <asp:PlaceHolder ID="PlaceHolderPrintedAlerts" runat="server">
                        <table class="table table-striped">
                                        <thead>
                                <tr>
                                    <th>#</th>
                                    <th>الاسم</th>
                                    <th>التأخر</th>
                                    <th>مساءلة</th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:ListView ID="lvPrintedAlerts" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("")%></td>
                                            <td><%#Eval("")%></td>
                                            <td><%#Eval("")%></td>
                                        </tr>
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        لا يوجد تنبيهات.
                                    </EmptyDataTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                    </asp:PlaceHolder>
                    <asp:Literal ID="ltrPrintedAlerts" runat="server"></asp:Literal>
                </div>

            </div>
        </div>
        <div class="col-md-5">
            <div class="panel">
                <div class="panel-header bg-red">
                    <h3><i class="icon-graph"></i><strong>الحسومات</strong> </h3>
                </div>
                <div class="panel-content ">
                    <asp:Literal ID="Literal1" runat="server">لا يوجد حسومات.</asp:Literal>
                </div>
            </div>
        </div>
    </div>--%>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

