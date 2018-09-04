<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ObligationAdd.aspx.cs" Inherits="Laboratay_ObligationAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; اضافة عهدة
            </h4>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label1" runat="server" Text=" اسم الموظف   :"></asp:Label>
                        </div>
                        <asp:DropDownList ID="ddlName" runat="server" AppendDataBoundItems="true" CssClass="chosen-select AutherDrop form-control form-white" OnSelectedIndexChanged="ddlName_SelectedIndexChanged" AutoPostBack="True">
                            <asp:ListItem Value="-1">اسم الموظف</asp:ListItem>
                        </asp:DropDownList>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="الرجاء اختيار الموظف" ControlToValidate="ddlName" ValueToCompare="-1" Operator="NotEqual" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true"></asp:CompareValidator>
                    </div>
                </div>

                <div class="col-lg-6">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <div class="form-group">
                                <div style="margin-bottom: 10px; padding-top: 5px;">
                                    <br />
                                    <br />
                                    الوظيفة:
                                <asp:Label ID="lblJob" ForeColor="RoyalBlue" runat="server"></asp:Label>
                                </div>

                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label5" runat="server" Text="  اسم الصنف:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNameProduct" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNameProduct" runat="server" ErrorMessage="الرجاء ادخال اسم الصنف  "></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label3" runat="server" Text=" العدد:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNumber" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtNumber" runat="server" ErrorMessage="الرجاء ادخال العدد   "></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtNumber" ValidationGroup="validaiton" ErrorMessage="الرجاء ادخال الرقم" ForeColor="Red" />

                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label4" runat="server" Text="ملاحظات:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-6" style="margin-right: 5px;">
                    <div class="form-group">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" CssClass="btn btn-primary btn-embossed" Text="إضافة" ValidationGroup="validaiton" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>

</asp:Content>

