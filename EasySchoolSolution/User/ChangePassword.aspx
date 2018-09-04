<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Communication_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-envelope" aria-hidden="true"></i>&nbsp; تغيير كلمة المرور
            </h4>
        </div>
        <div class="panel-body">

            <div class="row">

                <div class="panel-body">
                    <asp:ChangePassword ID="ChangePassword1" class="form-group col-sm-10 col-md-offset-1" runat="server">
                        <ChangePasswordTemplate>

                            <div class="form-group">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="CurrentPassword">كلمة المرور الحالية:</asp:Label>

                                <div class="col-md-8">
                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password" CssClass="form-control form-white"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ForeColor="Red" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="NewPasswordLabel" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="NewPassword">كلمة المرور الجديدة:</asp:Label>

                                <div class="col-md-8">
                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password" CssClass="form-control  form-white"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ForeColor="Red" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" CssClass="col-md-4 control-label" AssociatedControlID="ConfirmNewPassword">تأكيد كلمة المرور:</asp:Label>

                                <div class="col-md-8">
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="form-control form-white" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ForeColor="Red" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <div class="form-group">
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ForeColor="Red" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1"></asp:CompareValidator>

                                <div class="col-md-10" style="color: red">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-lg-offset-2 col-lg-10">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" CssClass="btn btn-success  waves-light" CommandName="ChangePassword" Text="تغيير كلمة المرور" ValidationGroup="ChangePassword1" />
                                </div>
                            </div>
                            </div>
                                           
                        </ChangePasswordTemplate>
                    </asp:ChangePassword>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

