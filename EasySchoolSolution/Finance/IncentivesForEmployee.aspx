<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncentivesForEmployee.aspx.cs" Inherits="Finance_IncentivesForEmployee" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; حوافز تصرف لمنسوبي المدرسة
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="اسم المكرم :"></asp:Label>
                        <asp:DropDownList ID="ddlEmployeeName" AutoPostBack="true" OnSelectedIndexChanged="ddlEmployeeName_SelectedIndexChanged" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white"></asp:DropDownList>
                       
                    </div>
                </div>
                <div class="col-lg-6">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                
                    <div class="form-group">
                        <div style="margin-bottom: 10px; padding-top:5px;">
                           الوظيفة: <br />
                       <div style="padding-right:55px; font-size:15px; color:royalblue; padding-top:15px;"><asp:Label ID="lblJob" runat="server"></asp:Label>
                        </div></div> 

                    </div>
                </ContentTemplate></asp:UpdatePanel>
                </div>
               
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="قيمة المكافأة :"></asp:Label>
                        <asp:TextBox ID="txtValue" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtValue" ErrorMessage="أدخل قيمة المكافأة "></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="التاريخ :"></asp:Label>
                        <asp:TextBox ID="txtDate" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <obout:Calendar ID="CalendarDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="الباقي :"></asp:Label>
                        <asp:TextBox ID="txtprice" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtprice" ErrorMessage="أدخل الباقي"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="اضافة" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

