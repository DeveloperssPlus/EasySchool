<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SchoolFundAdd.aspx.cs" Inherits="Finance_SchoolFundAdd" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">

      
       
    <div class="panel">
            <div class="panel-header">
                <a class="list-group-item" href="#"><i class="icon-puzzle font-red-flamingo" aria-hidden="true" ></i>&nbsp; اجتماع لجنة الصندوق المدرسي</a>
            </div>
            <div class="panel-body">
                <div class="col-lg-6">
                    <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="lblNoMeetings" runat="server" Text="رقم الاجتماع  :"></asp:Label>
                       <asp:TextBox ID="txtNoMeeting" runat="server" class="datepicker form-control  col-md-10 form-white" placeholder="ادخل رقم الاجتماع"></asp:TextBox>

                        </div>
                    </div>
                </div>
                    <br />
                      <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="تاريخ الاجتماع  :"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtDate" runat="server" class="datepicker form-control  col-md-10 form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>
                                <div class="col-lg-2">

                                    <obout:Calendar ID="CalendarDate" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                                    </div>
                                      <ASP:RegularExpressionValidator ID="DateValidator" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDate" 
                         Display="Dynamic" EnableClientScript="true" runat="server" 
                         ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)" 
                         SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
</ASP:RegularExpressionValidator>   
                             <div class="col-lg-8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblDateError" runat="server" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                        </div>
                   <br />
                         <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text=" التوصيات:"></asp:Label>
                            <asp:TextBox ID="txtRecommendations" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="lbl" runat="server" Text="مقر الاجتماع :"></asp:Label>
                            <asp:TextBox ID="txtHeadquarters" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtHeadquarters" runat="server" ErrorMessage="الرجاء ادخال مقر الاجتماع"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                    <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text=" الموضوعات المطروحة:"></asp:Label>
                            <asp:TextBox ID="txtDescription" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                         
                </div>
                <br /><br />
                <div class="col-lg-6">
                    <div class="row">
                    <div class="col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="اضافة" />

                     
                    </div>
                </div>
                </div>
            </div>
        </div>

        </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

