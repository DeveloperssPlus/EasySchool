<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VisitsAdd.aspx.cs" Inherits="Student_VisitsAdd" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
         <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; اضافة زيارة ولي أمر
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="اسم ولي الأمر :"></asp:Label>
                        <asp:TextBox ID="txtName"  CssClass="form-control form-white" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال اسم ولي الأمر"></asp:RequiredFieldValidator>
                                
                    </div>
                </div>
                <div class="col-lg-6">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="تاريخ الزيارة :"></asp:Label>

                                <asp:TextBox ID="txtDate" runat="server" placeholder="يوم/شهر/سنة" class="form-control form-white"></asp:TextBox>
                                <obout:Calendar ID="CalendarDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                                <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
                                    Display="Dynamic" EnableClientScript="true" runat="server"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btnSave" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال تاريخ الزيارة"></asp:RequiredFieldValidator>

                            </div>
                        </div>
               
            </div>
           
           
            <div class="row">

                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="سبب الزيارة :"></asp:Label>
                        <asp:TextBox ID="txtReson" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtReson" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال سبب الزيارة"></asp:RequiredFieldValidator>
                                  
                    </div>
                </div>
                 <div class="col-lg-5">
                    <div class="form-group">
                     <asp:Label ID="Label1" runat="server" Text="اسم الطالب :"></asp:Label>
                            <asp:DropDownList ID="DDLStudName" runat="server" CssClass="form-control form-white chosen-select AutherDrop"></asp:DropDownList>
                              
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                        <br />
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="btnSave" Text="اضافة" />
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

