<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RepositoryAdd.aspx.cs" Inherits="Laboratay_RepositoryAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div class="">
                    <div>
                        <span class="noty_text">
                            <div class="alert alert-success">
                                <p>
                                    <strong>شكرا لك.</strong>
                                    <asp:Label ID="lblerror" runat="server">لقد تم الإضافة بنجاح..</asp:Label>
                                </p>

                                <div class="noty_buttons">

                                    <br />
                                    <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-codepen" aria-hidden="true"></i>&nbsp;اضافة موجودات المستودع العام للمدرسة</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label1" runat="server" Text="رقم الصنف :"></asp:Label>
                        <asp:TextBox ID="txtProductNo" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtProductNo" runat="server" ErrorMessage="الرجاء ادخال رقم الصنف"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtProductNo" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الصنف عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">
                        <asp:Label ID="Label2" runat="server" Text="الوصف :"></asp:Label>
                        <asp:TextBox ID="txtDescription" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDescription" runat="server" ErrorMessage="الرجاء ادخال الوصف"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label4" runat="server" Text="الكمية :"></asp:Label>
                        <asp:TextBox ID="txtAmount" runat="server" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtAmount" runat="server" ErrorMessage="الرجاء ادخال الكمية"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtAmount" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال الكمية عبارة عن رقم" ForeColor="Red" />
                    </div>
                    <div class="col-lg-5">

                        <div class="col-lg-8">
                            التاريخ
                            <asp:TextBox ID="txtDate" runat="server" class="form-control form-white"></asp:TextBox>
                        </div>
                        <div class="col-lg-2">
                            <span>
                                <br />
                                <obout:Calendar ID="CalendarFrom" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                            </span>
                        </div>
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


                        <asp:Label ID="Label3" runat="server" Text="الحالة  :"></asp:Label>
                        <asp:RadioButtonList ID="RState" runat="server">
                            <asp:ListItem Value="false">سليم</asp:ListItem>
                            <asp:ListItem Value="true">تالف</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="RState" runat="server" ErrorMessage="الرجاء اختيار الحالة"></asp:RequiredFieldValidator>


                    </div>
                    <div class="col-lg-5">


                        <asp:Label ID="Label6" runat="server" Text="النوع  :"></asp:Label>
                        <asp:RadioButtonList ID="RType" runat="server">
                            <asp:ListItem Value="false">مستهلك</asp:ListItem>
                            <asp:ListItem Value="true">مستديم</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="RType" runat="server" ErrorMessage="الرجاء اختيار النوع"></asp:RequiredFieldValidator>


                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label5" runat="server" Text="ملاحظات :"></asp:Label>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>


                    </div>

                </div>




                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnSave" runat="server" Text="حفظ" ValidationGroup="validaiton" CssClass="btn btn-blue" OnClick="btnSave_Click" />
                    </div>
                </div>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

