<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentsBorrowAdd.aspx.cs" Inherits="Library_StudentsBorrowAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .hover-item:hover {
            background-color: #319DB5;
        }

        .AutherDrop {
            text-align: center;
            width: 250px;
            font-size: 15px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
        <%--  <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>--%>
        <div class="col-md-12 portlets ui-sortable">
            <div class="panel">
                <div class="panel-header bg-aero">
                    <h3>بحث عن<i class="fa fa-search faa-wrench animated"></i> <strong>كتاب </strong></h3>
                </div>
                <div class="panel-content">
                    <div class="row">
                        <div class="col-lg-5">
                            رقم الكتاب:
                                    <%--<asp:TextBox ID="txtBookNo" class="form-control form-white" runat="server"></asp:TextBox>--%>
                            <asp:DropDownList ID="ddlBookNo" runat="server" Width="230px" AppendDataBoundItems="true" class="chosen-select AutherDrop form-control form-white">
                                <asp:ListItem Value="-1">رقم الكتاب</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-5">
                            اسم الكتاب:
                                        <asp:DropDownList ID="ddlBookName" runat="server" Width="230px" CssClass="chosen-select AutherDrop form-control form-white">
                                        </asp:DropDownList>
                        </div>
                        <div class="pael-footer">
                            <br />
                            <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-embossed" Text="بحث" OnClick="btnSearch_Click" ValidationGroup="search" />
                        </div>

                        <br />
                    </div>
                </div>
            </div>
        </div>
        <%--       </ContentTemplate>
        <Triggers> <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"/></Triggers>

        </asp:UpdatePanel>--%>
    </div>
    <br />
    <%--   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
    <div class="row">
        <div class="col-md-12">
        <div class="panel">
            <div class="panel-header bg-aero">
                <h3>نتائج البحث عن <i class="fa fa-search faa-wrench animated"></i><strong>كتاب </strong></h3>
            </div>
            <asp:HiddenField ID="BookIdvalue" runat="server" />

            <div class="panel-content">
                <div class="row">
                    <div class="col-lg-5">
                        رقم الكتاب:
                <asp:Label ID="lblBookId" runat="server" Text="" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-5">
                        اسم الكتاب:
                             <asp:Label ID="lblBookName" runat="server" Visible="false" Text="Label" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">
                        اسم المؤلف:
                          <asp:Label ID="lblAutherName" runat="server" Text="" Visible="false" Font-Size="15px" ForeColor="#3399ff"></asp:Label>
                    </div>
                    <div class="col-lg-5">
                        النسخ المتوفرة: 
                                <asp:Label ID="lblAvalibleBook" runat="server" Text="" ForeColor="#3399ff"></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </div>

                <div class="row">
                    <div class="col-lg-5" style="margin-top: 25px">
                        <%--<asp:Button ID="Button1" runat="server" Text="إعادة" CssClass="btn red-haze btn btn-Red hover-item" />--%>
                        <asp:Button ID="btnDisplay" runat="server" Text="عرض استعارات الكتاب" CssClass="btn red-haze btn btn-Red hover-item" OnClick="btnDisplay_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
        </div>
    <asp:PlaceHolder ID="PlaceHolderAddBorrow" runat="server" Visible="false">
        <div class="panel">
            <div class="panel-header bg-aero">
                <h3><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp;إضافة الاستعارات</h3>
            </div>
            <div class="panel-content">

                <div class="row">
                    <div class="col-lg-6">
                        <asp:Label ID="Label3" runat="server" Text="Label">رقم الطالب : </asp:Label>
                        <asp:DropDownList ID="ddlStudentNumber" runat="server" AppendDataBoundItems="true" AutoPostBack="true" OnDataBinding="ddlStudentNumber_DataBinding" OnSelectedIndexChanged="ddlStudentNumber_SelectedIndexChanged" class="chosen-select AutherDrop form-control form-white" required>
                            <asp:ListItem Value="-1">رقم الطالب</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-lg-6">
                        <asp:Label ID="Label1" runat="server" Text="Label">اسم الطالب :  </asp:Label>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblStudentName" runat="server">  </asp:Label>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ddlStudentNumber" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-lg-12">
                        <asp:Label ID="Label2" runat="server" Text="Label">تاريخ الاستعارة: </asp:Label>
                        <i class="icon-calendar"></i>
                        <asp:Label ID="lblTodayDate" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col-lg-6">
                        <asp:Label ID="lbldateReturn" runat="server" Text="Label">تاريخ الاعادة :</asp:Label>
                        <i class="icon-calendar"></i>
                        <%--<asp:TextBox ID="txtWeek" runat="server" BorderStyle="None" ForeColor="#3366FF" Font-Bold="True" ReadOnly="True"></asp:TextBox>--%>

                        <asp:TextBox ID="txtWeek" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
                        <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1"
                            MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImageTooltip="التاريخ"
                            DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtWeek" runat="server">
                        </obout:Calendar>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtWeek"
                            Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                                          الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtWeek" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>

                    <div class="col-lg-6">
                        <br />
                        <asp:Button ID="btnWeek" runat="server" Text="بعد أسبوع" CssClass="btn red-haze btn btn-Red hover-item" OnClick="Button1_Click" />

                        <asp:Button ID="btnTwoWeek" runat="server" Text="بعد أسبوعين" CssClass="btn red-haze btn btn-Red hover-item" OnClick="btnTwoWeek_Click" />
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-12">
                        <div class="col-lg-4">

                            <asp:Button ID="btnAdd" runat="server" Text="حفظ" CssClass="btn red-haze btn btn-primary" OnClick="btnAdd_Click" ValidationGroup="btn" />

                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:PlaceHolder>


    <%--       </ContentTemplate>
        <Triggers> <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click"/></Triggers>
    </asp:UpdatePanel>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

