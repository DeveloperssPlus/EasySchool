<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GuidProgram.aspx.cs" Inherits="Employee_GuidProgram" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-child" aria-hidden="true"></i>&nbsp; البرامج الإرشادية المقدمة للطالب</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="اسم البرنامج :"></asp:Label>
                            <asp:TextBox ID="txtProgramName" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProgramName" runat="server" ErrorMessage="الرجاء ادخال اسم البرنامج"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                     <div class="col-lg-5">


                        <asp:Label ID="Label3" runat="server" Text="تاريخ التنفيذ  :"></asp:Label>
                        <div class="row">
                            <div class="col-lg-10">
                                <asp:TextBox ID="txtDateStart" runat="server" class="form-control form-white"></asp:TextBox>
                            </div>
                            <div class="col-lg-2">
                                <span>
                                    <obout:Calendar ID="CalendarDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateStart" runat="server"></obout:Calendar>
                                </span>
                            </div>
                        </div>
                        <asp:RegularExpressionValidator ID="DateValidator" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDateStart"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDateStart" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


                    </div>
                </div>

              
                <div class="row">
                   <div class="col-lg-5">

                        <asp:Label ID="Label2" runat="server" Text="المستفيدين :"></asp:Label>
                  <asp:DropDownList ID="ddlBenef" runat="server"  CssClass="form-control form-white chosen-select AutherDrop " DataSourceID="SqlDataSource1" DataTextField="value" DataValueField="Id"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineSchoolConnectionString %>" SelectCommand="SELECT [Id], [value] FROM [Constants] WHERE ([type] = 19)">
                         
                        </asp:SqlDataSource>

                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label9" runat="server" Text="عدد المستفيدين :"></asp:Label>
                        <asp:TextBox ID="txtBenefNo" runat="server" TextMode="Number" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtBenefNo" runat="server" ErrorMessage="الرجاء ادخال عدد المستفيدين"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                 <div class="row">
                        <div class="col-lg-5">

                        <asp:Label ID="Label5" runat="server" Text="المناسبة :"></asp:Label>
                        <asp:TextBox ID="txtOccasion" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtOccasion" runat="server" ErrorMessage="الرجاء ادخال المناسبة"></asp:RequiredFieldValidator>

                    </div>
                  
                    <div class="col-lg-5">
                        <asp:Label ID="Label4" runat="server" Text="مدى الاستجابة  :"></asp:Label>
                        <asp:TextBox ID="txtResponsiveness" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtResponsiveness" runat="server" ErrorMessage="الرجاء ادخال مدى الاستجابة "></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                 <div class="row">
                    
                    <div class="col-lg-5">
                        <asp:Label ID="Label7" runat="server" Text="عدد الطلاب :"></asp:Label>
                        <asp:TextBox ID="txtStudentNo" runat="server" TextMode="Number" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtStudentNo" runat="server" ErrorMessage=" الرجاء ادخال عدد الطلاب "></asp:RequiredFieldValidator>

                    </div>
                </div>




                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="حفظ" OnClick="btnSave_Click" ValidationGroup="validaiton" CssClass="btn btn-blue" />
                    </div>
                </div>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

