<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MessagesAdd.aspx.cs" Inherits="Communication_MessagesAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="../assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <script src="../assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
     <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; اضافة رسالة
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label10" runat="server" Text="اسم الشخص المرسل اليه :"></asp:Label>
                        <asp:TextBox ID="txtName"  CssClass="form-control form-white" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال اسم المرسل اليه"></asp:RequiredFieldValidator>
                                
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="وقت الارسال :"></asp:Label>
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
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtTime" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال وقت الارسال"></asp:RequiredFieldValidator>
                                    </div>
                </div>
               
            </div>
           
           
            <div class="row">

                <div class="col-lg-5">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="سبب الارسال :"></asp:Label>
                        <asp:TextBox ID="txtReson" TextMode="MultiLine" CssClass="form-control form-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtReson" Display="Dynamic" ForeColor="Red" runat="server" ValidationGroup="btnSave" ErrorMessage="الرجاء ادخال سبب الارسال"></asp:RequiredFieldValidator>
                                  
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
        <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/datatables/dynamic/media/jquery.dataTables.min.js"></script>
    <!-- Tables Filtering, Sorting & Editing -->
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/pages/table_dynamic.js"></script>
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/js/plugins.js"></script>
</asp:Content>

