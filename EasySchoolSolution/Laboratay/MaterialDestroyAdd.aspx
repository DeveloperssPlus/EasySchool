<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaterialDestroyAdd.aspx.cs" Inherits="Laboratay_MaterialDestroyAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-ban" aria-hidden="true"></i>&nbsp; اضافة فقد أو إتلاف مواد</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <%--                    <div class="col-lg-5">
                        <asp:Label ID="Label1" runat="server" Text="اليوم :"></asp:Label>
   <asp:DropDownList ID="ddlDay" runat="server" CssClass="chosen-select AutherDrop form-control form-white">
       <asp:ListItem>اختر اليوم</asp:ListItem>
         <asp:ListItem>السبت</asp:ListItem>
          <asp:ListItem>الأحد</asp:ListItem>
          <asp:ListItem>الاثنين</asp:ListItem>
          <asp:ListItem>الثلاثاء</asp:ListItem>
          <asp:ListItem>الأربعاء</asp:ListItem>
          <asp:ListItem>الخميس</asp:ListItem>
          <asp:ListItem>الجمعة</asp:ListItem>
                            </asp:DropDownList>   
                    </div>--%>

                    <div class="col-lg-5">
                        <div class="col-lg-10">
                            التاريخ
                            <asp:TextBox ID="txtDate" runat="server" class="form-control form-white"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <span>
                                <br />
                                <obout:Calendar ID="CalendarFrom" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                            </span>
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDate"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label4" runat="server" Text="رقم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductNo" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductNo" runat="server" ErrorMessage="الرجاء ادخال رقم الصنف"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtProductNo" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الصنف عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label2" runat="server" Text="اسم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductName" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductName" runat="server" ErrorMessage="الرجاء ادخال اسم الصنف"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">
                        <asp:Label ID="Label6" runat="server" Text="النوع  :"></asp:Label>
                        <asp:RadioButtonList ID="RType" runat="server" RepeatDirection="Horizontal">

                            <asp:ListItem Value="false">مستهلك</asp:ListItem>
                            <asp:ListItem Value="true">مستديم</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="RType" runat="server" ErrorMessage="الرجاء اختيار النوع"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label3" runat="server" Text="الوحدة :"></asp:Label>
                        <asp:TextBox ID="txtUnit" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtUnit" runat="server" ErrorMessage="الرجاء ادخال الوحدة"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5">

                        <asp:Label ID="Label7" runat="server" Text="الكمية :"></asp:Label>
                        <asp:TextBox ID="txtAmount" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtAmount" runat="server" ErrorMessage="الرجاء ادخال الكمية"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtAmount" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال الكمية عبارة عن رقم" ForeColor="Red" />
                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label8" runat="server" Text="أسباب الفقد أو التلف :"></asp:Label>
                        <asp:TextBox ID="txtReson" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtReson" runat="server" ErrorMessage="الرجاء ادخال سبب الإتلاف"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label5" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="اضافة" ValidationGroup="validaiton" CssClass="btn btn-blue" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>


        </div>


    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

