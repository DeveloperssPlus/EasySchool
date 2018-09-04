<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LatenessDisplay.aspx.cs" Inherits="EmployeeAttendence_LatenessDisplay" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
               <script>
                   function openModal(idd) {
                       var ff = document.getElementById('hiddenId').value=idd;

            $('#modal').modal('show');
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-clock"></i>&nbsp; سجل التأخر</h5>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-sm-2" style="margin-left: 38px;">
                    <asp:Button ID="btnShowLatenessDay" runat="server" Text="عرض تأخير اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowLatenessDay_Click" />
                </div>
                &nbsp; &nbsp;
                <div class="col-sm-2">
                    <asp:Button ID="btnShowAllLateness" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllLateness_Click" />
                </div>
                <div class="col-sm-8">
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-5">
                    <div class="col-sm-2 label-style">
                        <asp:Label ID="Label2" runat="server">من</asp:Label>
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
                        <asp:Label ID="Label1" runat="server">إلى</asp:Label>
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
            <table class="table  table-hover table-dynamic dataTable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الموظف</th>
                        <th>تاريخ التأخر</th>
                        <th>نوع التأخر</th>

                        <th>مدة التأخر</th>
                        <th></th>
                    </tr>
                </thead>
                <asp:ListView ID="lstLateness" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                            <td>
                                <%# MyDate.getDate( Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# Eval("Latetype") %>
                            </td> 
                             <td>
                                <%# Eval("Amount") %>
                            </td>
                            <td>
                                 <a runat="server" title="طباعة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;"> <i style="padding:7%;" class="fa fa-print inline" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form18.aspx?id={0}')") %>"></i></a>
                                  <a runat="server" title="رد على المساءلة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;" href='<%# Eval("Id","LatnessAlert.aspx?id={0}")%>'><i style="padding: 7%;" class="fa fa-reply inline"></i></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>


        <div class="panel margin-bottom-40">
        <div class="panel-heading">
            <h5 class="panel-title" style="font: bold;"><i class="fa fa-clock"></i>&nbsp; حسومات التأخر</h5>
        </div>
        <div class="panel-content">
            <br />
            <table class="table  table-hover table-dynamic dataTable">
                <thead>
                    <tr>
                        <th class="auto-style1">اسم الموظف</th>
                        <th>تاريخ الحسم</th>
                        <th>ساعات التأخر</th>
                        <th>أيام الحسم</th>
                        <th></th>
                    </tr>
                </thead>
                <asp:ListView ID="lstAlerts" runat="server" OnDataBinding="lstAlerts_DataBinding">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                            <td>
                                <%# MyDate.getDate( Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# Eval("Hours") %>
                            </td> 
                             <td>
                                 <asp:PlaceHolder ID="PlaceHolder1" runat="server" visible='<%#!Convert.ToBoolean(Eval("IsDayNull"))%>' >
                                <%# Eval("Days") %>
                                 </asp:PlaceHolder>

                                 <asp:PlaceHolder ID="PlaceHolder2" runat="server" visible='<%#Convert.ToBoolean(Eval("IsDayNull"))%>' >
                                     <a onclick="openModal(  <%# Eval("Id") %>);"><i class="fa fa-plus"></i></a>
                                 </asp:PlaceHolder>

                            </td>
                            <td>
                             <a runat="server" title="طباعة"  style="padding: 7%;"> <i style="padding:7%;" class="fa fa-print inline" onclick="<%# Eval("Id","prepareFrame('../SchoolForms/form19.aspx?id={0}')") %>"></i></a>
                                  <%--<a runat="server" title="رد على المساءلة" visible='<%#Convert.ToBoolean(Eval("isReply"))%>' style="padding: 7%;" href='<%# Eval("Id","LatnessAlert.aspx?id={0}")%>'><i style="padding: 7%;" class="fa fa-reply inline"></i></a>--%>
                       </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>



        
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>اضافة عدد أيام الحسم</strong></h4>
                </div>
                <div class="modal-body">
                    <p>الرجاء ادخال عدد أيام الحسم</p>
                    <asp:HiddenField ID="hiddenId" runat="server" ClientIDMode="Static"/>
             <div class="row">
                 <div class="col-md-3">
                     عدد أيام الحسم
                 </div>
                 <div class="col-md-6">
                     <asp:TextBox ID="txtDays" runat="server" TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ErrorMessage="الرجاء ادخال عدد الأيام" ControlToValidate="txtDays" ForeColor="Red"
                         Display="Dynamic" ValidationGroup="days" ></asp:RequiredFieldValidator>
                 </div>
             </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnSave" runat="server" Text="حفظ"  class="btn btn-default btn-embossed" OnClick="btnSave_Click" ValidationGroup="days"/>
                    <asp:Button ID="btnPrint" runat="server" Text="حفظ وطباعة"  class="btn btn-primary btn-embossed" OnClick="btnPrint_Click" ValidationGroup="days"/>
                    <button type="button" class="btn btn-danger btn-embossed" data-dismiss="modal">إغلاق</button>
                </div>
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

