<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentViolations.aspx.cs" Inherits="Student_StudentViolations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-medkit" aria-hidden="true"></i>&nbsp; اضافة مخالفات</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            اسم الطالب : 
                            <asp:Label ID="lblStdName" runat="server"  ForeColor="Blue" ></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="المخالفة  :"></asp:Label>
                            <asp:DropDownList ID="ddlViolations" runat="server" DataTextField="Title"
                                DataValueField="Id" CssClass="chosen-select AutherDrop form-control form-white">
                            </asp:DropDownList>
                            <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red"
                                ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtClass"
                                runat="server" ErrorMessage="الرجاء ادخال الصف"></asp:RequiredFieldValidator>--%>
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form-group">
                            <br />
                            <asp:Button ID="btnView" runat="server" Text="عرض الاجراء" CssClass="btn btn-success" OnClick="btnView_Click" />
                        </div>
                    </div>
                </div>

                <asp:PlaceHolder ID="PlaceHolderDetails" runat="server" Visible="false">


                    <div class="row">
                        <br />
                        المخالفة:
                        <asp:Label ID="lblViolation" runat="server" ForeColor="Blue" Text=" "></asp:Label>
                        <br />
                        <br />
                        عدد تكرار الطالب للمخالفة:
                        <asp:Label ID="lblCount" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                        <br />
                        <br />
                        الاجراءات المطلوبة:
                        <asp:Label ID="Label4" runat="server" Text="" ></asp:Label>

                        <br />
                        <table class="table datatable" id="table-editable">
                            <thead>
                                <tr>
                                    <th>م</th>
                                    <th>الاجراء</th>
                                    <th style="width:50%;">وصف الاجراء</th>
                                    <th>النماذج</th>

                                </tr>
                            </thead>
                            <asp:ListView ID="lstActions" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# getCounter() %></td>
                                        <td><%# Eval("Title") %></td>
                                        <td><%# Eval("Description") %></td>
                                        <td></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                        </table>
                    </div>
 
                    <div class="row">
                        <div class="col-lg-11">
                            <br />
                            <asp:Button ID="btnSave" runat="server" Text="حفظ المخالفة" ValidationGroup="validaiton" CssClass="btn btn-blue" OnClick="btnSave_Click" />
                        </div>
                    </div>
                </asp:PlaceHolder>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="../assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

