<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ActivitesDetails.aspx.cs" Inherits="Temp_Student_ActivitesDetails" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-child" aria-hidden="true"></i>&nbsp; النشاطات الطلابية</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="اسم المجال :"></asp:Label>
                            <asp:TextBox ID="txtFieldName" ReadOnly="true"  runat="server" class="form-control form-white"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="مسؤول النشاط :"></asp:Label>
                            <asp:TextBox ID="txtActivity" ReadOnly="true"  runat="server" class="form-control form-white"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="المقر :"></asp:Label>
                            <asp:TextBox ID="txtSeat" ReadOnly="true"  runat="server" class="form-control form-white"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">


                        <asp:Label ID="Label3" runat="server" Text="الأسبوع  :"></asp:Label>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    من
                                    <asp:TextBox ID="txtFrom" ReadOnly="true"  runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <br />
                                        <obout:Calendar ID="CalendarFrom" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtFrom" runat="server"></obout:Calendar>
                                    </span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    الى
                                    <asp:TextBox ID="txtTo" ReadOnly="true"  runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <br />
                                        <obout:Calendar ID="CalendarTo" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtTo" runat="server"></obout:Calendar>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
 <br /> <br />
              
              
                        <div class="panel">
            <div class="panel-header">
                  <div class="row">
                    <div class="col-lg-9">                      
                         <h3><i class="fa fa-tasks"></i><strong>قائمة الطلاب المستفيدين </strong> </h3>                      
                    </div>
                      <div class="col-lg-3">
                          <br />
                          <asp:Button ID="btnBack" runat="server" Text="رجوع" CssClass="btn red-haze btn btn-primary" OnClick="btnBack_Click"/>
                      </div>
                </div>
                
            </div>
            <div class="panel-content">
                <asp:ListView ID="LstStudent"  runat="server" >
                    <LayoutTemplate>
                        <table class="table table-hover table-dynamic">
                            <thead>
                                <tr>
                                 
                                    <th>
                                        <div class="m-b-10"> اسم الطالب</div>
                                    </th>
                                     <th>
                                        <div class="m-b-10"> السبت </div>
                                    </th>
                                    <th>
                                        <div class="m-b-10"> الأحد </div>
                                    </th>
                                    <th>
                                        <div class="m-b-10"> الإثنين </div>
                                    </th>
                                    <th>
                                        <div class="m-b-10"> الثلاثاء </div>
                                    </th>
                                    <th>
                                        <div class="m-b-10"> الأربعاء </div>
                                    </th>

                                </tr>
                            </thead>

                            <tr id="itemPlaceholder" runat="server"></tr>
                        </table>
                    </LayoutTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                 <asp:HiddenField ID="StudentId" runat="server" Value='<%# Eval("StudentId") %>' />
                                <asp:HiddenField ID="Id" runat="server" Value='<%# Eval("ActiviteId") %>' />
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label></td>
                        <td>
                            <asp:CheckBox ID="ckbSaturday" runat="server"  />
                        </td>
                             <td>
                            <asp:CheckBox ID="ckbSunday" runat="server" />
                        </td>
                             <td>
                            <asp:CheckBox ID="ckbMonday" runat="server" />
                        </td>
                             <td>
                            <asp:CheckBox ID="ckbTuesday" runat="server" />
                        </td>
                             <td>
                            <asp:CheckBox ID="ckbWednesday" runat="server" />
                        </td>
                        </tr>
                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <h2>لايوجد طلاب</h2>
                    </EmptyDataTemplate>



                </asp:ListView>
                <asp:Button ID="btnsave" runat="server" class="btn btn-success btn-embossed" Text="حفظ" OnClick="btnsave_Click" />

            </div>
        </div>

      </div>
              
            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

