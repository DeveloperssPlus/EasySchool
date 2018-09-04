<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SchoolResourceBox.aspx.cs" Inherits="Finance_SchoolResourceBox" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; موارد الصندوق المدرسي
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="الجهة الوارد منها المبلغ :"></asp:Label>
                        <asp:DropDownList ID="ddlPriceCome" runat="server" class="chosen-select AutherDrop" CssClass="form-control form-white" DataSourceID="SqlDataSource1" DataTextField="value" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineSchoolConnectionString8 %>" SelectCommand="SELECT [Id], [value] FROM [Constants] WHERE ([type] = 12)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="12" Name="type" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="المبلغ :"></asp:Label>
                        <asp:TextBox ID="txtPrice" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtPrice" ErrorMessage="أدخل المبلغ "></asp:RequiredFieldValidator>
                    </div>
                </div>

            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="المجموع :"></asp:Label>
                        <asp:TextBox ID="txtTotal" CssClass="form-control form-white" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="التاريخ :"></asp:Label>
                        <asp:TextBox ID="txtDate" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <obout:calendar id="CalendarDate" culturename="<%#MyDate.getDateCulture()%>" columns="1" datepickersynchronize="true" monthwidth="300" dateformat="yyyy/MM/dd" datepickerimagepath="~/assets/calendar.png" datepickermode="true" textboxid="txtDate" runat="server"></obout:calendar>
                        <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>

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

