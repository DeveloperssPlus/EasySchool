<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AttendenceReport.aspx.cs" Inherits="EmployeeAttendence_AttendenceReport" %>

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
                            <i class="fa fa-users bg-blue"></i>
                        </div>
                        <div class="right">
                            <div>
                                <span class="c-blue pull-left">
                                    <asp:Label ID="lblAll" runat="server"></asp:Label></span>
                            </div>
                            <div class="txt">الموظفين</div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-child bg-green"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-green pull-left">
                                        <asp:Label ID="lblAttendence" runat="server"></asp:Label></span>
                                </div>
                                <div class="txt">الحضور</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-times bg-red"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-red pull-left">
                                        <asp:Label ID="lblAbsence" runat="server"></asp:Label></span>
                                </div>
                                <div class="txt">الغياب</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-exclamation bg-orange"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-orange pull-left">
                                        <asp:Label ID="lblLateness" runat="server"></asp:Label></span>
                                </div>
                                <div class="txt">التأخر</div>
                            </div>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="left">
                            <i class="fa fa-sign-out bg-purple"></i>
                        </div>
                        <div class="right">
                            <div class="clearfix">
                                <div>
                                    <span class="c-purple pull-left">
                                        <asp:Label ID="lblPermission" runat="server">0</asp:Label></span>
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
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-header bg-red">
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
                                    <th>عدد أيام الغياب</th>
                                    <th>مساءلة</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:ListView ID="lvAbsence" runat="server" OnDataBinding="lvAbsence_DataBinding" >
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#getCounter() %></td>
                                            <td><%#Eval("Name")%></td>
                                            <td><%#ConstantManager.getConstant(int.Parse(Eval("Type").ToString()))%></td>
                                            <td><%# Eval("count")%></td>
                                            <td>
                                                <a runat="server" title="طباعة" visible='<%# Eval("isHoloday")%>'><i class="fa fa-print inline" onclick="<%# Eval("AlertId","openModal({0})")%>"></i></a>
                                                <a runat="server" title="طباعة"  visible='<%# !(Boolean)Eval("isHoloday")%>'><i class="fa fa-print inline" onclick="<%# Eval("AlertId","prepareFrame('../SchoolForms/form20.aspx?id={0}&count=false')")%>"></i></a>
                                                <a title="جداول الانتظار" href="EmployeeWaitingAdd.aspx?id=<%# Eval("Id") %>"><i class="fa fa-table inline"></i></a>
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
        <div class="col-md-12">
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
                                    <th>نوع التأخر</th>
                                    <th>التأخر</th>
                                    <%--<th>مساءلة</th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                <%--     <% setCounter(); %>--%>
                                <asp:ListView ID="lvLatenesses" runat="server" OnDataBinding="lvLatenesses_DataBinding">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#getCounter2() %></td>
                                            <td><%#Eval("empName")%></td>
                                            <td><%#Eval("type")%></td>
                                            <td><%# TimeSpan.FromSeconds((double)Eval("totalSeconds")).ToString()%></td>
                                            <td>
                                                <a><i class="fa fa-print inline" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form18.aspx?id={0}')") %>"></i></a>
                                            </td>
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
                                                <p>
                                                    لقد تجاوز تأخر
                                                <span style="color: dodgerblue">
                                                    <%#Eval("empName")%>
                                                </span>
                                                    (<%#Eval("hours")%>) الساعات 
                                               
                                                <%--   <asp:PlaceHolder ID="PlaceHolderAlertPermission" runat="server" Visible='<%# !Convert.ToBoolean(Eval("isLate"))%>'>لقد تجاوز استئذان 
                                                <span style="color: brown">
                                                    <%#Eval("empName")%>
                                                </span>
                                                    الساعتين خلال العام و قد بلغ استئذانه 
                                                <%# TimeSpan.FromSeconds((double)Eval("totalSeconds")).ToString()%>
                                                </asp:PlaceHolder>--%>
                                                </p>
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

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-header bg-orange">
                    <h3><i class="icon-graph"></i>حسومات <strong>التأخر</strong> </h3>
                </div>
                <div class="panel-content">
                    <asp:PlaceHolder ID="PlaceHolderPrintedAlerts" runat="server">
                        <asp:ListView ID="lvPrintedAlerts" runat="server" OnDataBinding="lvPrintedAlerts_DataBinding">
                            <LayoutTemplate>

                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>الاسم</th>
                                            <th>عدد ساعات
                                                <br />
                                                التأخر</th>
                                            <th>عدد أيام
                                                <br />
                                                الحسم</th>
                                            <th>طباعة الحسم</th>
                                        </tr>
                                    </thead>
                                    <tr id="itemPlaceholder" runat="server"></tr>
                                </table>
                            </LayoutTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td><%#getCounter2() %></td>
                                    <td><%#Eval("empName")%></td>
                                    <td><%#Eval("hours")%></td>
                                    <td><%#Eval("days")%></td>
                                    <td><a><i class="fa fa-print" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form19.aspx?id={0}')") %>"></i></a></td>
                                </tr>
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <h3>لا يوجد تنبيهات.
                                </h3>
                            </EmptyDataTemplate>
                        </asp:ListView>

                    </asp:PlaceHolder>
                    <asp:Literal ID="ltrPrintedAlerts" runat="server"></asp:Literal>
                </div>
            </div>
        </div>

    </div>


    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <asp:HiddenField ID="hiddenId" runat="server" />
                <div class="modal-body">
                    <p>هل تريد تضمين ايام الاجازة في المساءلة ؟</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal" onclick="absentAlert(true)">نعم</button>
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal" onclick="absentAlert(false)">لا</button>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    var alertId;

    <script>
        function absentAlert(count) {
            if (count == true) {
                prepareFrame('../SchoolForms/form20.aspx?id=' + alertId + '&count=true');
            } else
                prepareFrame('../SchoolForms/form20.aspx?id=' + alertId + '&count=false');

        }
    </script>

    <script type="text/javascript">

        function prepareFrame(src1) {
            var ff = document.getElementById('newframe');
            if (ff != null)
                ff.parentNode.removeChild(ff);

            var ifrm = document.createElement("iframe");
            ifrm.setAttribute("id", "newframe");
            ifrm.setAttribute("src", src1);
            ifrm.style = "Display:none;"

            ifrm.style.width = "640px";
            ifrm.style.height = "480px";
            document.body.appendChild(ifrm);

            document.getElementById('newframe').contentWindow.print();
        }

    </script>

    <script>
        function openModal(idd) {
            alertId = idd;
            $('#modal').modal('show');
        }

    </script>
</asp:Content>

