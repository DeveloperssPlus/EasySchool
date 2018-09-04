<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AbsenceDisplay.aspx.cs" Inherits="EmployeeAttendence_AbsenceDisplay" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-lg-12 portlets">

        <div class="panel panel-blue margin-bottom-40">
            <div class="panel-heading">
                <h5 class="panel-title" style="font: bold;"><i class="fa fa-times-circle"></i>&nbsp; سجل الغياب</h5>
            </div>
            <div class="panel-content">
                <div class="row">
                    <div class="col-sm-2" style="margin-left: 38px;">
                        <asp:Button ID="btnShowLatenessDay" runat="server" Text="عرض غياب اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowLatenessDay_Click" />
                    </div>
                    &nbsp; &nbsp;
                <div class="col-sm-2">
                    <asp:Button ID="btnShowAllLateness" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllLateness_Click" />
                </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-sm-5">
                        <div class="col-sm-2 label-style">
                            <asp:Label ID="Label2" runat="server" Text="Label">من</asp:Label>
                        </div>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DatePickerFrom" CssClass="col-md-10 form-control form-white" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                            <span>
                                <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="DatePickerFrom" runat="server"></obout:Calendar>
                            </span>
                            <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="DatePickerFrom"
                                Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                                ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                SetFocusOnError="true" ValidationGroup="btnDate">
                       الرجاء ادخال تاريخ صحيح
                            </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnDate" ID="RequiredFieldValidator3" runat="server" ControlToValidate="DatePickerFrom" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="col-sm-2 label-style">
                            <asp:Label ID="Label1" runat="server" Text="Label">إلى</asp:Label>
                        </div>
                        <div class="col-sm-10">
                            <asp:TextBox ID="DatePickerTo" CssClass="col-md-10 form-control form-white" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                            <span>
                                <obout:Calendar ID="Calendar2" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="DatePickerTo" runat="server"></obout:Calendar>
                            </span>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="DatePickerTo"
                                Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                                ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                SetFocusOnError="true" ValidationGroup="btnDate">
                                  الرجاء ادخال تاريخ صحيح
                            </asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnDate" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DatePickerTo" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                        </div>
                    </div>
                    <div class="col-sm-2">
                        <asp:Button ID="btnShow" runat="server" Text="عرض" CssClass="btn red-haze btn btn-primary" ValidationGroup="btnDate" OnClick="btnShow_Click" />
                    </div>
                </div>
                <br />
                <table class="table table-hover table-dynamic dataTable" id="table-editable">
                    <thead>
                        <tr>
                             <th>#</th>
                            <th class="auto-style1">اسم الموظف</th>
                            <th>تاريخ الغياب</th>
                            <th>سبب الغياب</th>
                            <th></th>
                        </tr>
                    </thead>
                    <asp:ListView ID="lstLateness" runat="server">
                        <ItemTemplate>
                            <tr>
                                  <td><%#getCounter() %></td>
                                <td>
                                    <%# Eval("Name") %>
                                </td>
                                <td>
                                    <%# MyDate.getDate( Eval("Date").ToString()) %>
                                </td>
                                <td>
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server" visible='<%#Convert.ToBoolean(Eval("isReply"))%>'>
                                    <%#ConstantManager.getConstant(int.Parse(Eval("Type").ToString())) %>

                                    </asp:PlaceHolder>

                                    <asp:PlaceHolder ID="PlaceHolder2" runat="server" visible='<%#!Convert.ToBoolean(Eval("isReply"))%>'>
                                    <%# Eval("Reason") %>

                                        </asp:PlaceHolder>
                                </td>
                                <td>
                                    <a runat="server" title="طباعة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;"><i style="padding: 7%;" class="fa fa-print inline" onclick="<%# Eval("alertId","prepareFrame('../SchoolForms/form20.aspx?id={0}')") %>"></i></a>

                                    <a runat="server" title="رد على المساءلة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;"><i onclick="<%# Eval("alertId","location.href='AbsentAlert.aspx?id={0}'")%>" style="padding: 7%;" class="fa fa-reply inline"></i></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </div>

        </div>
    </div>


    <div class="col-lg-12 portlets">

        <div class="panel panel-blue margin-bottom-40">
            <div class="panel-heading">
                <h5 class="panel-title" style="font: bold;"><i class="fa fa-times-circle"></i>&nbsp; عرض مساءلات الغياب</h5>
            </div>
            <div class="panel-content">

                <br />
                <table class="table table-hover table-dynamic dataTable">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th class="auto-style1">اسم الموظف</th>
                            <th>بداية الغياب</th>
                            <th>نهاية الغياب</th>
                            <th>عدد الأيام</th>
                            <th>قرار المدير</th>
                            <th></th>
                        </tr>
                    </thead>
                    <asp:ListView ID="lstDecitions" runat="server" OnDataBinding="lstDecitions_DataBinding">
                        <ItemTemplate>
                            <tr>
                                <td><%#getCounter2() %></td>
                                <td>
                                    <a href="<%# Eval("Id","AbsentAlert.aspx?view={0}")%>">
                                        <%# Eval("Name") %>
                                    </a>
                                </td>
                                <td>
                                    <%# MyDate.getDate( Eval("DateFrom").ToString()) %>
                                </td>
                                <td>
                                    <%# MyDate.getDate( Eval("DateTo").ToString()) %>
                                </td>
                                <td>
                                    <%# Eval("count") %>
                                </td>
                                <td>
                                    <%# Eval("Decision") %>
                                </td>
                                <td>
                                    <a runat="server" id="lnkPrint" title="طباعة" visible='<%#Convert.ToBoolean(Eval("isPrint"))%>'><i style="padding: 7%;" class="fa fa-print inline" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form21.aspx?id={0}')") %>"></i></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>

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


</asp:Content>

