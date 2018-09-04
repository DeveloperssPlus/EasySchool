<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RevenuesAdd.aspx.cs" Inherits="Finance_RevenuesAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="col-md-12 portlets">
        <div class="panel">
            <div class="panel-header">
                <h4><i class="fa fa-money" aria-hidden="true"></i>&nbsp; اضافة الايرادات</h4>
            </div>
            <div class="panel-body">
                <div class="container">
                    <br />
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="البند :"></asp:Label>
                                <asp:DropDownList ID="DDLItem" class="chosen-select AutherDrop form-control form-white" runat="server"
                                    DataSource='<%# ConstantManager.get("بنود الميزانية")%>' DataTextField="value" DataValueField="Id">
                                </asp:DropDownList>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" 
                                    ErrorMessage="ادخل البند" ControlToValidate="DDLItem" ValidationGroup="k"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="المبلغ :"></asp:Label>
                                <asp:TextBox ID="txtAmount" runat="server"  placeholder="المبلغ" class="form-control form-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="ادخل المبلغ" ControlToValidate="txtAmount" ValidationGroup="k"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server" 
										Display="Dynamic" ErrorMessage="الرجاء ادخال قيمة صحيحة" ValidationExpression="^\d*\.?\d*$"
										ControlToValidate="txtAmount" ValidationGroup="k"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="تاريخ الاستلام :"></asp:Label>

                                <asp:TextBox ID="txtDate" runat="server" placeholder="يوم/شهر/سنة" class="form-control form-white"></asp:TextBox>
                                <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                                <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
                                    Display="Dynamic" EnableClientScript="true" runat="server"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="k" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال تاريخ الاستلام"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="اسم المستلم :"></asp:Label>
                                <asp:DropDownList ID="DDLReciveName" class="chosen-select AutherDrop form-control form-white" runat="server"></asp:DropDownList>

                                <asp:CompareValidator ID="RequiredFieldValidator4" ValueToCompare="select" Operator="NotEqual" runat="server" ForeColor="Red" ErrorMessage="ادخل اسم المستلم" ControlToValidate="DDLReciveName" ValidationGroup="k"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>

                    
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="الاستلام :"></asp:Label>
                                <asp:DropDownList ID="ddlDelivery" class="chosen-select AutherDrop form-control form-white" runat="server">
                                    <asp:ListItem Value="0">نقدا</asp:ListItem>
                                    <asp:ListItem Value="1">شيك</asp:ListItem>
                                    <asp:ListItem Value="2">حوالة مالية</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-lg-6">
                            <br />
                            <asp:Button ID="btnSave" runat="server" CssClass="btn red-haze btn btn-primary" OnClick="btnSave_Click" Text="حفظ" ValidationGroup="k" />
                            <asp:Label ID="Label5" runat="server" ForeColor="#0066ff"></asp:Label>
                        </div>
                    </div>



                </div>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

