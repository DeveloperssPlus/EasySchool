<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DailyVisitDisplay.aspx.cs" Inherits="Library_DailyVisitDisplay" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel margin-bottom-40">
        <div class="panel-heading">
            <h3 ><i class="fa fa-child"></i>&nbsp;  سجل التردد اليومي
                    <strong><a onclick=" prepareFrame('../SchoolForms/form42.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
            </h3>
        </div>
        <div class="panel-content">
            <div class="row">
                    <asp:Button ID="btnShowLatenessDay" runat="server" Text="عرض زيارات اليوم" CssClass="btn red-haze btn btn-primary" OnClick="btnShowLatenessDay_Click" />
              
                    <asp:Button ID="btnShowAllLateness" runat="server" Text="عرض الكل" CssClass="btn red-haze btn btn-primary" OnClick="btnShowAllLateness_Click" />
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
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btnDate" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
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
                            Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="btnDate" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnDate" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DatePickerTo" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <div class="col-sm-2">
                    <asp:Button ID="btnShow" runat="server" Text="عرض" CssClass="btn red-haze btn btn-primary" OnClick="btnShow_Click" />
                </div>
            </div>
            <br />
            <table class="table table-hover dataTable" id="table-editable">
                <thead>
                    <tr>
                                  <th>#</th>
                                  <th>اليوم <br /> والتاريخ</th>
                        <th>اسم الطالب</th>
                        <th>الصف</th>
                        <th>وقت الزيارة</th>
                        <th>الغرض الزيارة</th>
                        <th>الأدوات
                            <br />
                            والأجهزة المستخدمة</th>
                        <th>
                        </th>
                    </tr>
                </thead>
                <asp:ListView ID="lstLibraryVisits" runat="server">
                    <ItemTemplate>
                        <tr>
                              <td>
                                <%# getCounter() %>
                            </td>
                            <td>
                                <%# MyDate.getDay((DateTime)Eval("Date"))+"<br/> "+ MyDate.getDate(Eval("Date").ToString()) %>
                            </td>
                            <td>
                                <%# Eval("Name") %>
                            </td>
                              <td>
                            </td>
                            <td>
                                <%# Eval("Time") %>
                            </td>

                            <td>
                                <%# Eval("Reason") %>
                            </td>
                            <td>
                                <%# Eval("MaterialsUsed") %>
                            </td>
                            <td>
                               <asp:LinkButton OnClientClick='return confirm("هل أنت متأكد؟")' ID="LinkButton1" runat="server" CommandName="del" CommandArgument='  <%#Eval("Id") %>'>
                                <i class="fa fa-times"></i>
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
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
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/jquery-ui/jquery-ui-1.11.2.min.js"></script>
</asp:Content>

