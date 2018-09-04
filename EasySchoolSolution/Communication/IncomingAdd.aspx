<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IncomingAdd.aspx.cs" Inherits="Communication_IncomingAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
 <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong> تمت العملية بنجاح</strong></h4>
                </div>
                <div class="modal-body">
                    <p><strong> تمت العملية بنجاح</strong><br /> هل تريد الذهاب لسجل الوارد؟</p>
                    
                </div>
                <div class="modal-footer">
                   
                    <a  href="IncomingDisplay.aspx" class="btn btn-default btn-embossed" >نعم</a>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">لا</button>
                </div>
            </div>
        </div>
    </div>
    <%--   <asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">

        <div class="alert alert-success media fade in">
            <p>
                <strong>شكرا لك.</strong>
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </p>
            <p>
                <asp:HyperLink ID="lnkTask" runat="server">
                 هل ترغب باضافة مهام لمتابعة الوارد
                </asp:HyperLink>
            </p>
        </div>
    </asp:PlaceHolder>--%>

    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; إضافة وارد عام</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="رقم الوارد :"></asp:Label>
                                <asp:TextBox ID="txtIncomingID" runat="server" CssClass="form-control form-white"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtIncomingID" runat="server" ErrorMessage="الرجاء ادخال رقم الوارد"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <div class="col-lg-12">
                                    <asp:Label ID="Label3" runat="server" Text="التاريخ  :"></asp:Label>
                                </div>
                                <asp:TextBox ID="txtDate" runat="server" class="datepicker form-control  col-md-10 form-white" placeholder="يوم/شهر/سنة"></asp:TextBox>
                                <div class="col-lg-2">

                                    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
                                </div>
                                <asp:RegularExpressionValidator ID="DateValidator" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtDate"
                                    Display="Dynamic" EnableClientScript="true" runat="server"
                                    ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                                    SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                                </asp:RegularExpressionValidator>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                                <asp:Label ID="lblDateError" runat="server" ForeColor="Red"></asp:Label>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="النوع :"></asp:Label>
                                <asp:DropDownList ID="ddlType" runat="server" DataSource='<%#ConstantManager.get("نوع الوارد")%>' DataTextField="value" DataValueField="Id" CssClass="form-control form-white chosen-select AutherDrop "></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="الجهة الوارد منها المعاملة :"></asp:Label>
                                <asp:DropDownList ID="ddlFrom" runat="server" DataSource='<%# ConstantManager.get("الجهة الوارد منها المعاملة")%>' CssClass="form-control form-white" DataTextField="value" DataValueField="Id"></asp:DropDownList>
                                <%--<asp:TextBox ID="txtFrom" runat="server" CssClass="form-control form-white"></asp:TextBox>--%>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFrom"
                                Text="الرجاء ادخال مصدر الرسالة" ValidationGroup="validaiton" Display="Dynamic" ForeColor="Red" />--%>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="المرفقات :"></asp:Label>
                                <asp:DropDownList ID="ddlFileAttach" runat="server" class="chosen-select AutherDrop" DataSource='<%#ConstantManager.get("مرفقات الوارد")%>' DataTextField="value" DataValueField="Id" CssClass="form-control form-white"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <asp:Label ID="Label7" runat="server" Text="الموضوع :"></asp:Label>
                            <asp:TextBox ID="txtSubject" runat="server" TextMode="MultiLine" Height="95px" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="رقم الملف :"></asp:Label>
                                <asp:TextBox ID="txtFileNumber" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-lg-11">
                                <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="" OnClick="btnAdd_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8" style="padding-left: 5%; padding-right: 5%;">
                    <div class="row">
                        <div class="col-md-3">
                            <asp:Label ID="Label8" runat="server" Text="ملف الوارد"></asp:Label>
                        </div>
                        <div class="col-md-6">
                            <asp:FileUpload ID="fuPdf" runat="server" CssClass="form-control" />
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="btnLoad" runat="server" Text="عرض" CssClass="btn btn-success btn-md" OnClick="btnLoad_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <iframe runat="server" id="pdfFrame" class="form-control" style="height: 550px; padding: 0px;"></iframe>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:PlaceHolder ID="PlaceHolder2" runat="server" >
    <section id="section">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-header">
                            <a href="#"><i class="fa fa-tasks" aria-hidden="true"></i>&nbsp; إسناد التعميم</a>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <strong>نوع التعميم
                                </strong>

                                <asp:RadioButtonList ID="RadioType" AutoPostBack="true" runat="server" CellPadding="20" CellSpacing="20" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0">خاص بالادارة</asp:ListItem>
                                    <asp:ListItem Value="1">كل الموظفين</asp:ListItem>
                                    <asp:ListItem Value="2">اختيار الموظفين</asp:ListItem>
                                </asp:RadioButtonList>


                            </div>
                            <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">

                                <div class="row">
                                    <div id="Tabs" role="tabpanel" class="ui-sortable">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="active"><a href="#Employee" aria-controls="personal" role="tab" data-toggle="tab" style="color: #0e849f; border-color: #319db5;"><i class="icon-user"></i>
                                                اختيار الموظفين</a> </li>

                                            <li><a href="#Specification" aria-controls="employment" role="tab" data-toggle="tab" style="color: #65b417; border-color: #319db5;"><i class="fa fa-pencil" aria-hidden="true"></i>حسب التخصص</a></li>

                                            <li><a href="#JobName" aria-controls="employment" role="tab" data-toggle="tab" style="color: #d714cd; border-color: #319db5;"><i class="fa fa-user-plus" aria-hidden="true"></i>
                                                حسب المسمى الوظيفي </a></li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content" style="padding-top: 20px">
                                            <div role="tabpanel" class="tab-pane active" id="Employee">
                                                <div class="row">
                                                    <asp:ListView ID="LstEmp" runat="server" GroupItemCount="3">

                                                        <LayoutTemplate>
                                                            <table runat="server">
                                                                <tr runat="server">
                                                                    <td runat="server">
                                                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                            <tr id="groupPlaceholder" runat="server">
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server">
                                                                    <td runat="server" style=""></td>
                                                                </tr>

                                                            </table>
                                                        </LayoutTemplate>
                                                        <GroupTemplate>
                                                            <tr id="itemPlaceholderContainer" runat="server">
                                                                <td id="itemPlaceholder" runat="server"></td>
                                                            </tr>
                                                        </GroupTemplate>
                                                        <ItemTemplate>
                                                            <td runat="server">
                                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("IdentityNumber") %>' />
                                                                <div class="col-lg-12">
                                                                    <asp:CheckBox ID="chkRow" runat="server" class="item" />
                                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                                </div>
                                                            </td>
                                                        </ItemTemplate>
                                                        <EmptyDataTemplate>
                                                            <h2>لا يوجد موظفين !</h2>
                                                        </EmptyDataTemplate>
                                                    </asp:ListView>

                                                </div>


                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="Specification">
                                                <div class="row">
                                                    <asp:ListView ID="LstSpecification" runat="server" GroupItemCount="3">
                                                        <LayoutTemplate>
                                                            <table runat="server">
                                                                <tr runat="server">
                                                                    <td runat="server">
                                                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                            <tr id="groupPlaceholder" runat="server">
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server">
                                                                    <td></td>
                                                                </tr>
                                                            </table>
                                                        </LayoutTemplate>
                                                        <GroupTemplate>
                                                            <tr id="itemPlaceholderContainer" runat="server">
                                                                <td id="itemPlaceholder" runat="server"></td>
                                                            </tr>
                                                        </GroupTemplate>
                                                        <ItemTemplate>
                                                            <td>
                                                                <div class="col-lg-12">
                                                                    <%--<asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("IdentityNumber") %>' />--%>

                                                                    <asp:CheckBox ID="chkRow" runat="server" />
                                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Specification") %>' />
                                                                </div>
                                                            </td>
                                                        </ItemTemplate>

                                                        <EmptyDataTemplate>
                                                            <h2>لا يوجد تخصص!</h2>
                                                        </EmptyDataTemplate>
                                                    </asp:ListView>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="JobName">
                                                <div class="row">
                                                    <asp:ListView ID="LstJopEmployees" runat="server" GroupItemCount="3">
                                                        <LayoutTemplate>
                                                            <table runat="server">
                                                                <tr runat="server">
                                                                    <td runat="server">
                                                                        <table id="groupPlaceholderContainer" runat="server" border="0" style="background-color: rgba(185, 227, 248, 0.42);">
                                                                            <tr id="groupPlaceholder" runat="server">
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr runat="server">
                                                                    <td runat="server" style=""></td>
                                                                </tr>

                                                            </table>
                                                        </LayoutTemplate>
                                                        <GroupTemplate>
                                                            <tr id="itemPlaceholderContainer" runat="server">
                                                                <td id="itemPlaceholder" runat="server"></td>
                                                            </tr>
                                                        </GroupTemplate>
                                                        <ItemTemplate>

                                                            <td runat="server">
                                                                <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("ID") %>' />
                                                                <div class="col-lg-12">
                                                                    <asp:CheckBox ID="chkRow" runat="server" />
                                                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                                                </div>
                                                            </td>
                                                        </ItemTemplate>

                                                        <EmptyDataTemplate>
                                                            <h2>لا يوجد مسميات وظيفية</h2>
                                                        </EmptyDataTemplate>
                                                    </asp:ListView>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </asp:PlaceHolder>
                        </div>
                    </div>
                </div>
            </ContentTemplate>

            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="RadioType" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
    </section>
        </asp:PlaceHolder>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

