<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LabRecod.aspx.cs" Inherits="Laboratay_LabRecod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:placeholder id="PlaceHolderSuccess" runat="server" visible="false">

        <ul class="i-am-new" style="position: fixed; width: 310px; height: auto; margin: 0px; padding: 0px; list-style-type: none; z-index: 10000000; left: 480px; top: 126px;">
            <li style="width: 310px; height: 121px;">

                <div>
                    <span class="noty_text">
                        <div class="alert alert-success">
                            <p>
                                <strong>شكرا لك.</strong>
                                <asp:Label ID="Label1" runat="server">تم الاضافة بنجاح</asp:Label>
                            </p>

                            <div class="noty_buttons">

                                <br />
                                <asp:Button ID="btnok" runat="server" CssClass="btn btn-success" Text="اغلاق" OnClick="btnok_Click" />
                            </div>
                        </div>

                    </span>
                </div>

            </li>
        </ul>
    </asp:placeholder>

    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; جرد المختبر</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">


                <div class="row">
                    <div class="col-lg-5">

                        <asp:label id="Label4" runat="server" text="رقم الصنف :"></asp:label>
                        <asp:textbox id="txtProductNo" runat="server" class="form-control form-white"></asp:textbox>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator6" display="Dynamic" forecolor="Red" validationgroup="validaiton" setfocusonerror="true" controltovalidate="txtProductNo" runat="server" errormessage="الرجاء ادخال رقم الصنف"></asp:requiredfieldvalidator>
                        <asp:comparevalidator runat="server" operator="DataTypeCheck" type="Integer"
                            controltovalidate="txtProductNo" validationgroup="validaiton" errormessage="الرجاء ادخال رقم الصنف عبارة عن رقم" forecolor="Red" />
                    </div>
                    <div class="col-lg-5">

                        <asp:label id="Label2" runat="server" text="اسم الصنف :"></asp:label>
                        <asp:textbox id="txtProductName" runat="server" class="form-control form-white"></asp:textbox>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator3" display="Dynamic" forecolor="Red" validationgroup="validaiton" setfocusonerror="true" controltovalidate="txtProductName" runat="server" errormessage="الرجاء ادخال اسم الصنف"></asp:requiredfieldvalidator>

                    </div>

                </div>
                <br />

                <div class="row">
                    <div class="col-lg-5">

                        <asp:label id="Label3" runat="server" text="الوحدة :"></asp:label>
                        <asp:textbox id="txtUnit" runat="server" class="form-control form-white"></asp:textbox>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator1" display="Dynamic" forecolor="Red" validationgroup="validaiton" setfocusonerror="true" controltovalidate="txtUnit" runat="server" errormessage="الرجاء ادخال الوحدة"></asp:requiredfieldvalidator>

                    </div>
                    <div class="col-lg-5">

                        <asp:label id="Label7" runat="server" text="الكمية :"></asp:label>
                        <asp:textbox id="txtAmount" runat="server" class="form-control form-white"></asp:textbox>
                        <asp:requiredfieldvalidator id="RequiredFieldValidator4" display="Dynamic" forecolor="Red" validationgroup="validaiton" setfocusonerror="true" controltovalidate="txtAmount" runat="server" errormessage="الرجاء ادخال الكمية"></asp:requiredfieldvalidator>
                        <asp:comparevalidator runat="server" operator="DataTypeCheck" type="Integer"
                            controltovalidate="txtAmount" validationgroup="validaiton" errormessage="الرجاء ادخال الكمية عبارة عن رقم" forecolor="Red" />
                    </div>

                </div>

                <div class="row">
                    <div class="col-lg-5">

                        <asp:label id="Label5" runat="server" text="ملاحظات :"></asp:label>
                        <asp:textbox id="txtNote" runat="server" textmode="MultiLine" class="form-control form-white"></asp:textbox>


                    </div>




                    <div class="row">
                        <div class="col-lg-11">
                            <br />
                            <asp:button id="btnSave" runat="server" text="اضافة" validationgroup="validaiton" onclick="btnSave_Click" cssclass="btn btn-blue" />
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

