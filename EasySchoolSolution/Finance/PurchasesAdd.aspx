<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PurchasesAdd.aspx.cs" Inherits="Finance_DeliveryAmount" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp; اضافة مشتريات</h4>
        </div>
        <div class="panel-body">

            <br />
            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="البند :"></asp:Label>

                        <asp:DropDownList ID="DDLItem" class="chosen-select AutherDrop form-control form-white" runat="server"
                            DataSource='<%# ConstantManager.get("بنود الميزانية")%>' DataTextField="value" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="ادخل البند" ControlToValidate="DDLItem" ValidationGroup="k"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="الكمية :"></asp:Label>
                        <asp:TextBox ID="txtAmount" TextMode="Number" runat="server" placeholder="الكمية" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="ادخل الكمية" ControlToValidate="txtAmount" ValidationGroup="k"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="السعر الافرادي :"></asp:Label>
                        <asp:TextBox ID="txtUnitPrice" TextMode="Number" placeholder="السعر الافرادي" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="ادخل السعر الافرادي" ControlToValidate="txtUnitPrice" ValidationGroup="k"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="السعر الاجمالي :"></asp:Label>
                        <asp:TextBox ID="txtTotalPrice" TextMode="Number" placeholder="السعر الإجمالي" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="ادخل السعر الإجمالي" ControlToValidate="txtTotalPrice" ValidationGroup="k"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        التاريخ
                            <asp:TextBox ID="txtDate" runat="server" class="form-control form-white"></asp:TextBox>
                    </div>

                    <span>

                        <obout:Calendar ID="CalendarFrom" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                    </span>
                </div>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDate"
                    Display="Dynamic" EnableClientScript="true" runat="server"
                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="رقم الفاتورة :"></asp:Label>
                        <asp:TextBox ID="txtBillNo" TextMode="Number" placeholder="رقم الفاتورة" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="ادخل رقم الفاتورة" ControlToValidate="txtBillNo" ValidationGroup="k"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" Text="جهة الفاتورة :"></asp:Label>
                        <asp:TextBox ID="txtBillSide" placeholder="جهة الفاتورة" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ErrorMessage="ادخل جهة الفاتورة" ControlToValidate="txtAmount" ValidationGroup="k"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="col-lg-5">
                    <br />
                    <asp:Button ID="btnSave" runat="server" CssClass="btn red-haze btn btn-primary" OnClick="btnSave_Click" Text="حفظ" ValidationGroup="k" />

                </div>
            </div>

        </div>
    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

