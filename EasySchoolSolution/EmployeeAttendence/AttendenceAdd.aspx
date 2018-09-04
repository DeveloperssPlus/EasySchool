<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AttendenceAdd.aspx.cs" Inherits="EmployeeAttendence_AttendenceAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12 portlets">

        <div class="panel">
            <div class="panel-header">
                <h3><i class="fa fa-table"></i><strong>الحضور  </strong>اليومي</h3>
            </div>
            <br />
            <br />
            <div class="col-md-6">

                <asp:TextBox ID="datepicker" runat="server" CssClass="col-md-10 form-control form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>

                <span>
                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="datepicker" runat="server"></obout:Calendar>
                </span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="datepicker"
                    Display="Dynamic" EnableClientScript="true" runat="server" ValidationGroup="validaiton"
                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" ID="RequiredFieldValidator1" runat="server" ControlToValidate="datepicker" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

            </div>
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblDay" runat="server"></asp:Label>
            <asp:Label ID="lbldate" runat="server"></asp:Label>
            <asp:Button ID="btnTime" runat="server" OnClick="btnTime_Click" Text="تحديد الكل حضور" CssClass="btn btn-success"></asp:Button>
            <asp:Button ID="btnAbsent" runat="server" OnClick="btnAbsent_Click" Text="تحديد الكل غياب" CssClass="btn btn-danger"></asp:Button>
            <asp:Button ID="btnLate" runat="server" OnClick="btnLate_Click" Text="تحديد الكل تأخير" CssClass="btn btn-warning"></asp:Button>

            <asp:ListView ID="ListView1" runat="server" OnDataBinding="ListView1_DataBinding" OnItemDataBound="ListView1_ItemDataBound" DataKeyNames="identityNumber" OnItemCommand="ListView1_ItemCommand">
                <LayoutTemplate>
                    <table class="table  table-hover table-dynamic dataTable">
                        <thead>
                            <th><%--غياب--%></th>
                            <th>اسم الموظف</th>
                            <th>الوظيفة</th>
                            <th></th>

                            <%--<th class="text-left">سبب الغياب</th>--%>
                        </thead>
                        <tr id="itemPlaceholder" runat="server"></tr>
                    </table>
                </LayoutTemplate>

                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Button ID="btnActive" CommandName="Active" runat="server" Text="غياب" CssClass="btn btn-danger"></asp:Button>
                        </td>
                        <td>
                            <%# Eval("Name") %>
                        </td>
                        <td>
                            <asp:Label ID="lbljob" runat="server"><%# Eval("job") %></asp:Label>
                        </td>
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("identityNumber") %>' />
                        <td style="width: 40%;">

                            <asp:PlaceHolder runat="server" ID="Time" Visible="false">
                                <div class="row">
                                    <div class="col-md-6">
                                        وقت الحضور
                                                 <asp:Panel CssClass='input-group date' ID='datetimepicker3' runat="server">
                                                     <asp:TextBox ID="txtarrivingTime" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                                     <span class="input-group-addon">
                                                         <span class="glyphicon glyphicon-time"></span>
                                                     </span>
                                                 </asp:Panel>
                                        <asp:Literal ID="litJ1" runat="server" />

                                    </div>
                                    <div class="col-md-6">
                                        وقت الانصراف
                                                 <asp:Panel CssClass='input-group date' ID='datetimepicker4' runat="server">

                                                     <asp:TextBox ID="txtdeptime" runat="server" CssClass="form-control form-white"></asp:TextBox>

                                                     <span class="input-group-addon">
                                                         <span class="glyphicon glyphicon-time"></span>
                                                     </span>
                                                 </asp:Panel>
                                        <asp:Literal ID="litJ2" runat="server" />

                                    </div>
               
                                  <asp:CompareValidator ID="cpvFinish" ControlToValidate="txtdeptime" ControlToCompare="txtarrivingTime" Operator="GreaterThan"
                            Display="Dynamic" EnableClientScript="true" ValidationGroup="btnSave" ErrorMessage="يجب أن يكون وقت الحضور اقل من وقت الانصراف." 
                                      runat="server" ForeColor="Red" SetFocusOnError="true"/>
                              
                                    
                                     </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="Late" Visible="false">
                                <div class="row">
                                      <div class="col-md-4">
                                        وقت الحضور
                                            <div class='input-group date' id='<%# Eval("IdentityNumber","datetimepicker{0}").Trim() %>'>
                                                <asp:TextBox ID="TimeLate" runat="server"></asp:TextBox>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#<%# Eval("IdentityNumber","datetimepicker{0}").Trim() %>').datetimepicker({
                                                    format: 'LT',
                                                    locale: 'en'
                                                });
                                            });
                                        </script>
                                        <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TimeLate" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال وقت الحضور"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </asp:PlaceHolder>
                            <asp:PlaceHolder runat="server" ID="Absent" Visible="true">سبب الغياب
                                        <asp:DropDownList runat="server" ID="lstResonLate" DataSource='<%#ConstantManager.get("أسباب الغياب")%>' DataTextField="value" DataValueField="id">
                                        </asp:DropDownList>
                            </asp:PlaceHolder>
                        </td>
                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <h2>No Records!</h2>
                </EmptyDataTemplate>
            </asp:ListView>

        </div>
        <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:OnlineSchoolConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>--%>
        <br />
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-6">
                <asp:Button ID="btnsave" runat="server" CssClass="btn btn-blue" Text="حفظ" OnClick="btnsave_Click" ValidationGroup="btnSave" />
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

