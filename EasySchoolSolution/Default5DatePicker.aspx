<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5DatePicker.aspx.cs" Inherits="Default5DatePicker" %>

<%@ Register TagPrefix="obout" Namespace="Obout.ListBox" Assembly="obout_ListBox" %>
<%@ Register Assembly="obout_Interface" Namespace="Obout.Interface" TagPrefix="obout" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="assets/timepicker/Content/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="assets/timepicker/Scripts/moment-with-locales.min.js"></script>
    <%--<link href="assets/timepicker/Content/bootstrap.css" rel="stylesheet" />--%>
    <script src="assets/timepicker/Scripts/bootstrap-datetimepicker.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

<%--    <div class="" data-toggle="modal" data-target="#modal-large">
        <asp:Button ID="Button2" runat="server" Text="Button" />
    </div>
    <br />
    <br />
    obout calender
    <asp:TextBox ID="txtDate" runat="server" placeholder="يوم/شهر/سنة"></asp:TextBox>
    <obout:Calendar ID="Calendar1" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtDate" runat="server"></obout:Calendar>
    <asp:RegularExpressionValidator ID="DateValidator" ControlToValidate="txtDate" ForeColor="Red"
        Display="Dynamic" EnableClientScript="true" runat="server"
        ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
        SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
    </asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ValidationGroup="btn" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDate" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>


    <br />
    <br />

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" Style="direction: ltr;" />
    <br />
    التاريخ =
    <asp:Label ID="lbl" runat="server"></asp:Label>

    <br />
    <br />
    <br />
    <br />



    <br />
    <div class="container">
        <div class="row">
            <div class='col-sm-2'>
                <div class="form-group">


                    <div class='input-group date' id='datetimepicker3'>
                        <asp:TextBox ID="txttime" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-time"></span>
                        </span>
                    </div>

                </div>
            </div>
            <script type="text/javascript">
                $(function () {
                    $('#datetimepicker3').datetimepicker({
                        format: 'LT',
                        locale: 'en'
                    });
                });
            </script>
        </div>
    </div>

    <asp:Button ID="Button3" runat="server" Text="time check" OnClick="Button3_Click" />--%>

    <br />
    <br />
    <br />
    <br />
    <br />
<hr />


    <asp:Label runat="server" ID="lbl">aaa</asp:Label>



    <script>
        function openModal(sender, selectedDate) {
            alert("aaaaaaaaaaaa");
        }
    </script>



    <obout:Calendar ID="Calendar2"  Columns="1" DatePickerSynchronize="true" MonthWidth="300"
         DateFormat="yyyy/MM/dd" 
       OnClientDateChanged="openModal"
         runat="server"></obout:Calendar>















<%--
    <table style="width: 80%">
        <tr>
            <td>اسم المعلم المستأذن</td>
            <td>الحصة</td>
            <td>اسم المعلم المناوب</td>
            <td>الصف</td>
        </tr>
        <tr>
            <td rowspan="4"></td>
            <td>حصة 1</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 2</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 3</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 4</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td rowspan="4"></td>
            <td>حصة 1</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 2</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 3</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>حصة 4</td>
            <td></td>
            <td></td>
        </tr>

    </table>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

