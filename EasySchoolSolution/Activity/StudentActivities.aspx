<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentActivities.aspx.cs" Inherits="Student_StudentActivities" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-child" aria-hidden="true"></i>&nbsp; النشاطات الطلابية</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="اسم المجال :"></asp:Label>
                            <asp:TextBox ID="txtFieldName" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtFieldName" runat="server" ErrorMessage="الرجاء ادخال اسم المجال"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="مسؤول النشاط :"></asp:Label>
                            <asp:TextBox ID="txtActivity" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtActivity" runat="server" ErrorMessage="الرجاء ادخال مسؤول النشاط"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5">
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="المقر :"></asp:Label>
                            <asp:TextBox ID="txtSeat" runat="server" class="form-control form-white"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtSeat" runat="server" ErrorMessage="الرجاء ادخال المقر"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">


                        <asp:Label ID="Label3" runat="server" Text="الأسبوع  :"></asp:Label>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    من
                                    <asp:TextBox ID="txtFrom" runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <br />
                                        <obout:Calendar ID="CalendarFrom" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtFrom" runat="server"></obout:Calendar>
                                    </span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="col-lg-8">
                                    الى
                                    <asp:TextBox ID="txtTo" runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <br />
                                        <obout:Calendar ID="CalendarTo" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtTo" runat="server"></obout:Calendar>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <asp:RegularExpressionValidator ID="DateValidator" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtFrom"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="validaiton" ForeColor="Red" ControlToValidate="txtTo"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtTo" runat="server" ErrorMessage="الرجاء ادخال تاريخ البداية"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtFrom" runat="server" ErrorMessage="الرجاء ادخال تاريخ النهاية"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ValidationGroup="validaiton" ControlToCompare="txtFrom" ControlToValidate="txtTo" ForeColor="Red" Operator="GreaterThan" Text="يجب ان يكون تاريخ البداية أكبر من تايخ النهاية"></asp:CompareValidator>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label5" runat="server" Text="الطلاب المشاركين :"></asp:Label>

                    </div>

                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="row">
                            <div class="col-lg-6">
       <asp:Label ID="Label6" runat="server" Text="أسماء الطلاب :"></asp:Label>
                            
                       <%--      <asp:TextBox ID="txtSearch" runat="server" onkeyup="SearchList();"></asp:TextBox>--%>
                                <asp:ListBox ID="LstStudentName" SelectionMode="Multiple" runat="server" ></asp:ListBox>


                            </div>
                            <div class="col-lg-1">
                                <br />
                                <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text=">>" OnClick="btnAdd_Click" />
                                <br />
                                <br />
                                <asp:Button ID="btnDelete" OnClick="btnDelete_Click" CssClass="btn btn-success " runat="server" Text="<<" />
                            </div>
                            <div class="col-lg-5">
                                <asp:Label ID="Label7" runat="server" Text=" أسماء الطلاب المشاركين :"></asp:Label>
                                <asp:ListBox ID="Lstpart" runat="server" SelectionMode="Multiple" Width="300" OnSelectedIndexChanged="Lstpart_SelectedIndexChanged"></asp:ListBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="Lstpart" runat="server" ErrorMessage="الرجاء ادخال الطلاب المشاركين"></asp:RequiredFieldValidator>

                            </div>

                        </div>

                    </ContentTemplate>
                </asp:UpdatePanel>

                <div class="row">
                    <div class="col-lg-11">
                        <br />
                        <asp:Button ID="btnPrint" runat="server" Text="طباعة أولياء الأمور" ValidationGroup="validaiton" CssClass="btn btn-blue" />
                    </div>
                    <asp:Button ID="btnSave" runat="server" Text="حفظ" OnClick="btnSave_Click" ValidationGroup="validaiton" CssClass="btn btn-blue" />

                </div>
            </div>




        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
  
<%--    <script type="text/javascript" > 

    function SearchList()
    {
        var l =  document.getElementById('<%= LstStudentName.ClientID %>');
        var tb = document.getElementById('<%= txtSearch.ClientID %>');
        if(tb.value == ""){
            ClearSelection(l);
        }
        else{
            for (var i=0; i < l.options.length; i++){
                if (l.options[i].value.toLowerCase().match(tb.value.toLowerCase()))
                {
                    l.options[i].selected = true;
                    return false;
                }
                else
                {
                    ClearSelection(l);
                }
            }
        }
    }

    function ClearSelection(lb){
        lb.selectedIndex = -1;
    }

</script>--%>

</asp:Content>

