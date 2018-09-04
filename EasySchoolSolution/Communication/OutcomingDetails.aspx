<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OutcomingDetails.aspx.cs" Inherits="Communication_OutcomingDetails" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">
                <div class="">
                    <div>
                        <span class="noty_text">
                            <div class="alert alert-success">
                                <p>
                                    <strong>شكرا لك.</strong>
                                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                                </p>
                          
                                <div class="noty_buttons">
                                    <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="موافق" OnClick="btnok_Click" />
                                </div>
                            </div>
                        </span>
                    </div>
                </div>
            </li>
        </ul>
    </asp:PlaceHolder>
    <div class="col-md-12">
        <div class="panel">
            <div class="panel-headers">
                <h2 style="padding: 3%">
                    <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;  تفاصيل الصادر
                    <a href="#" id="lnkDelivery" class="btn btn-success pull-right" data-toggle="modal" data-target="#colored-header">توديع معاملة 
                    </a>
                    <asp:HyperLink ID="lnkTask" CssClass="btn btn-primary pull-right" runat="server">
                        اضافة مهمة
                    </asp:HyperLink>
                </h2>
            </div>

            <div class="panel-body">
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="رقم الصادر :"></asp:Label>
                                <asp:Label ID="txtOutcomingNumber" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="العنوان :"></asp:Label>
                                <asp:Label ID="txtTitle" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="lblSource" runat="server" Text="تاريخ الإرسال :"></asp:Label>
                                <asp:Label ID="txtDate" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="النوع :"></asp:Label>
                                <asp:Label ID="txtType" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="مصدر الرسالة :"></asp:Label>
                                <asp:Label ID="txtSourceFrom" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="اسم المستلم :"></asp:Label>
                                <asp:Label ID="txtRecivedName" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="الجهة المرسل إليها :"></asp:Label>
                                <asp:Label ID="txtSourceTo" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="رقم الملف :"></asp:Label>
                                <asp:Label ID="txtFileNumber" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="المرفقات :"></asp:Label>
                                <asp:Label ID="txtFileAttach" runat="server" Text="" CssClass="form-control"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="row" style="padding: 5%;">
                        <div class="col-md-12">
                            <iframe runat="server" id="pdfFrame" class="form-control" style="height: 550px; padding: 0px;"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="colored-header" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>توديع </strong>المعاملة</h4>

                </div>

                <div class="modal-body">
                    <p>الرجاء ادخال البيانات التالية</p>
                    <asp:Label ID="lblDone" runat="server" ForeColor="Blue"></asp:Label>
                    <br />
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label class="lblStyle">اسم المستلم</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtReceiver" runat="server" CssClass="form-control form-white  "></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtReceiver" ValidationGroup="receive" ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ForeColor="Red" ErrorMessage="الرجاء ادخال اسم المستلم"></asp:RequiredFieldValidator>
                                    <br />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label class="lblStyle">تاريخ التسليم</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtDateReceive" runat="server" CssClass="form-control form-white  datepicker col-md-10"></asp:TextBox>
                                    <span>
                                        <obout:Calendar ID="Calendar1" BeginDateCalendarId="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true"
                                            MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDateReceive" runat="server">
                                        </obout:Calendar>
                                    </span>
                                    <asp:RequiredFieldValidator ControlToValidate="txtDateReceive" ValidationGroup="receive" ID="RequiredFieldValidator2" runat="server"
                                        Display="Dynamic" ForeColor="Red" ErrorMessage="الرجاء ادخال اسم المستلم"></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtDateReceive"
                                        Display="Dynamic" EnableClientScript="true" runat="server" ForeColor="Red" ValidationGroup="receive"
                                        ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                        SetFocusOnError="true">
                                        الرجاء ادخال تاريخ صحيح
                                    </asp:RegularExpressionValidator>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />

                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnDelivery" runat="server" Text="توديع المعاملة" ValidationGroup="receive" CssClass="btn btn-primary" OnClick="btnDelivery_Click" />

                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">اغلاق</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

