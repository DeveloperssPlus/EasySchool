<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CupboardRecord.aspx.cs" Inherits="Laboratay_CupboardRecord" %>

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
            <h4><i class="fa fa-flask" aria-hidden="true"></i>&nbsp; بيان بعهدة خزانة المواد الكيميائية</h4>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label1" runat="server" Text="رقم الخزانة   :"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNumberCabinet" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNumberCabinet" runat="server" ErrorMessage=" الرجاء ادخال رقم الخزانة    "></asp:RequiredFieldValidator>
                          <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtNumberCabinet" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الخزانة عبارة عن رقم" ForeColor="Red" />
                    </div>
                </div>


                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label15" runat="server" Text=" رقم الصنف:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNoProduct" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNoProduct" runat="server" ErrorMessage="الرجاء ادخال رقم الصنف  "></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtNoProduct" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال رقم الصنف عبارة عن رقم" ForeColor="Red" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label2" runat="server" Text="  اسم الصنف:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNameProduct" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNameProduct" runat="server" ErrorMessage="الرجاء ادخال اسم الصنف  "></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label3" runat="server" Text=" الوحدة:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtUnit" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtUnit" runat="server" ErrorMessage="الرجاء ادخال الوحدة   "></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label5" runat="server" Text=" الكمية:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtQuentity" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtQuentity" runat="server" ErrorMessage="الرجاء ادخال الكمية   "></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtQuentity" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال الكمية عبارة عن رقم" ForeColor="Red" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label4" runat="server" Text="ملاحظات:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-embossed" Text="إضافة" ValidationGroup="validaiton" OnClick="btnAdd_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

