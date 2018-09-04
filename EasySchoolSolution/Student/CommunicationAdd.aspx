<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CommunicationAdd.aspx.cs" Inherits="Student_CommunicationAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
       <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; الاتصالات على أولياء الأمور
            </h4>
        </div>
        <div class="panel-body">
           
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="رقم الاتصال:"></asp:Label>
                        <asp:TextBox ID="txtContactNo" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtContactNo" ErrorMessage="أدخل رقم الاتصال "></asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="وقت الاتصال :"></asp:Label>
                      <div class='input-group date' id='datetimepicker5'>
                                                <asp:TextBox ID="txtTime" CssClass="form-control form-white" runat="server"></asp:TextBox>
                                                <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                                </span>
                                            </div>
                                        <script type="text/javascript">
                                            $(function () {
                                                $('#datetimepicker5').datetimepicker({
                                                    format: 'LT',
                                                    locale: 'en'
                                                });
                                            });
                                        </script>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtTime" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال وقت الارسال"></asp:RequiredFieldValidator>
                                    </div>
                </div>
              
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="الرد :"></asp:Label>
                        <asp:TextBox ID="txtReply" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                    </div>
                </div>
                  <div class="col-lg-6">
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="السبب :"></asp:Label>
                        <asp:TextBox ID="txtReason" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ValidationGroup="validaiton" ControlToValidate="txtReason" ErrorMessage="أدخل سبب الاتصال"></asp:RequiredFieldValidator>
                    
                    </div>
                </div>
                
                 <div class="row">

                <div class="col-lg-2">
                    <div class="form-group">
                        <br />
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

