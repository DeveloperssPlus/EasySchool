<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OutcomingAdd.aspx.cs" Inherits="Communication_OutcomingAdd" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>
    <script type="text/javascript">

        function prepareFrame(src1) {
            var ff = document.getElementById('newframe');
            if (ff != null)
                ff.parentNode.removeChild(ff);

            var ifrm = document.createElement("iframe");
            ifrm.setAttribute("id", "newframe");
            ifrm.setAttribute("src", src1);
            ifrm.style = "Display:none;"

            ifrm.style.width = "640px";
            ifrm.style.height = "480px";
            document.body.appendChild(ifrm);

            document.getElementById('newframe').contentWindow.print();
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
                    <p><strong> تمت العملية بنجاح</strong><br /> هل تريد الذهاب لسجل الصادر؟</p>
                    
                </div>
                <div class="modal-footer">
                   
                    <a  href="OutcomingDisplay.aspx" class="btn btn-default btn-embossed" >نعم</a>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">لا</button>
                </div>
            </div>
        </div>
    </div>
    <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; إضافة صادر عام
            </h4>
        </div>
        <div class="panel-body">
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label10" runat="server" Text="رقم الصادر :"></asp:Label>
                            <asp:TextBox ID="txtOutcomingID" runat="server" Style="direction: ltr;" CssClass="form-control form-white" ReadOnly="true"></asp:TextBox>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="txtOutcomingID" ValidationGroup="validaiton" ForeColor="Red" ErrorMessage="الرجاء إدخال رقم الصادر" />--%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="النوع :"></asp:Label>
                            <asp:DropDownList ID="ddlType" runat="server" class="chosen-select AutherDrop" DataSource='<%#ConstantManager.get("نوع الصادر")%>' DataTextField="value" DataValueField="Id" CssClass="form-control form-white"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="رقم الملف :"></asp:Label>
                            <asp:TextBox ID="txtFileNumber" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="الموضوع :"></asp:Label>
                            <asp:TextBox ID="txtTitle" runat="server" class="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <%--          <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="تاريخ الإرسال :"></asp:Label>
                            <asp:TextBox ID="txtDate" runat="server" class="datepicker form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDate" runat="server" ErrorMessage="الرجاء إدخال تاريخ الإرسال"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>--%>
            </div>
            <div class="col-lg-6">
                <%--    <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label11" runat="server" Text="اسم المستلم :"></asp:Label>
                            <asp:TextBox ID="txtRecivedName" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtRecivedName" runat="server" ErrorMessage="الرجاء إدخال اسم المستلم"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>--%>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="المرفقات :"></asp:Label>
                            <asp:DropDownList ID="ddlFileAttach" runat="server" class="chosen-select AutherDrop" DataSource='<%#ConstantManager.get("مرفقات الصادر")%>' DataTextField="value" DataValueField="Id" CssClass="form-control form-white"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="من :"></asp:Label>
                            <asp:DropDownList ID="ddlSourceFrom" runat="server" DataSource='<%#ConstantManager.get("مصدر الصادر") %>' DataValueField="Id" DataTextField="Value" CssClass="form-control form-white"></asp:DropDownList>
                            <%--    <asp:TextBox ID="txtSourceFrom" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSourceFrom" Display="Dynamic" ValidationGroup="validaiton" ForeColor="Red" ErrorMessage="الرجاء إدخال المصدر" />
                            --%>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="الجهة الصادر لها المعاملة :"></asp:Label>
                            <asp:DropDownList ID="ddlSourceTo" runat="server" DataSource='<%#ConstantManager.get("الجهة الصادر لها المعاملة") %>' DataValueField="Id" DataTextField="Value" CssClass="form-control form-white"></asp:DropDownList>
                            <%--       <asp:TextBox ID="txtSourceTo" runat="server" CssClass="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Source" runat="server" ControlToValidate="txtSourceTo" ValidationGroup="validaiton" Display="Dynamic" ForeColor="Red" ErrorMessage="الرجاء إدخال الجهة المرسلة إليها" />
                            --%>
                        </div>
                    </div>
                </div>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group" style="font-weight: 100;">
                            استخدام 
                            <asp:RadioButtonList AutoPostBack="true" ID="RadioTemplate" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">قالب فارغ</asp:ListItem>
                                <asp:ListItem Value="1">قالب جاهز </asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
                <br />
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <asp:Label ID="Label9" runat="server" Text="الخطاب :"></asp:Label>
                            <span>
                                <asp:LinkButton ID="btnRefresh" runat="server" OnClick="btnRefresh_Click"><i class="fa fa-refresh"></i></asp:LinkButton></span>
                            <%-- Editor --%>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <CKEditor:CKEditorControl ID="txtEditor" runat="server" Height="500">
               
                                    </CKEditor:CKEditorControl>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="RadioTemplate" EventName="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="btnRefresh" EventName="click" />

                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-8">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="تسجيل الصادر" OnClick="btnAdd_Click" />
                        <%--<asp:Label ID="lblerror" runat="server" ForeColor="#0066ff"></asp:Label>--%>
                        <asp:Button ID="btnPrint" runat="server" CssClass="btn  btn btn-success" Text="طباعة" OnClick="btnPrint_Click" />


                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

