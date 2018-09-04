<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmployeePermissionAdd.aspx.cs" Inherits="EmployeeRoles_EmployeePermissionAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="form-group">


        <div class="panel">
            <div class="panel-header">
                <h4><i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp;إضافة صلاحية للموظف</h4>
            </div>
            <div class="panel-body">

                <div class="page-head">
                    <!-- BEGIN PAGE TITLE -->

                </div>

                <div class="row">
                    <div class="col-md-6 ">
                        <!-- BEGIN SAMPLE FORM PORTLET-->
                        <div class="portlet light ">
                            <div class="portlet-title">
                                <%--   <div class="caption">
                            <i class="fa fa-file-archive-o"></i>
                            <span class="caption-subject  sbold uppercase">اضافة صلاحية للموظف
                            </span>
                        </div>--%>
                            </div>
                            <div class="portlet-body form">
                                <div class="form-horizontal" role="form">
                                    <div class="form-body">




                                        <div class="form-group">
                                            <div class="row">

                                                <div class="col-md-2 ">

                                                    <asp:Label class="control-label" ID="lblName" runat="server" Text="الموظف"></asp:Label>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="input-icon">
                                                        <%--    <i class="fa fa-user"></i>--%>
                                                        <asp:DropDownList class="form-control" ID="ddlEmployee" runat="server" OnDataBound="ddlEmployee_DataBound"
                                                            OnDataBinding="ddlEmployee_DataBinding" DataTextField="Name" DataValueField="UserName" CssClass="form-control form-white">
                                                        </asp:DropDownList>

                                                        <asp:CompareValidator runat="server" ValidationGroup="AddPermission" Operator="NotEqual"
                                                            ControlToValidate="ddlEmployee" Display="Dynamic" ForeColor="#FF3300" ValueToCompare="0" ErrorMessage=" إسم الموظف" />
                                                    </div>
                                                </div>
                                            </div>

                                        </div>



                                        <div class="form-group">
                                               <div class="row">
                                                <div class="col-md-2 ">

                                            <label class=" control-label">اسم الصلاحية</label>
                                                    </div>
                                            <div class="col-md-9">
                                                <div class="input-icon">
                                                    <asp:DropDownList class="form-control" ID="ddlPerName" runat="server" OnDataBound="ddlPerName_DataBound" 
                                                        CssClass="form-control form-white">
                                                    </asp:DropDownList>

                                                    <asp:CompareValidator ID="cvddlPerName" runat="server" ControlToValidate="ddlPerName"
                                                        Display="Dynamic" ErrorMessage="يجب إدخال القيمة" Operator="NotEqual" ValidationGroup="AddPermission" ForeColor="#FF3300"
                                                        ValueToCompare="0" Width="305px"></asp:CompareValidator>
                                                </div>
                                            </div>
                                        </div>
                                        </div>


                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-2 col-md-9">
                                                    <asp:Button href="javascript:;" CssClass="btn red-haze btn btn-primary" ID="btnAdd" runat="server" Text="إضافة" ValidationGroup="AddPermission" OnClick="btnAdd_Click" />

                                                </div>
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- END PRIVACY SETTINGS TAB -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

