<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShiftAdd.aspx.cs" Inherits="EmployeeAttendence_ShiftAdd" %>
<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
     
            <div class="panel">
        <div class="panel-header">
            <h4>
                <i class="fa fa-plus-square-o" aria-hidden="true"></i>&nbsp; المناوبة والإشراف اليومي
            </h4>
        </div>
        <div class="panel-body">

          <div class="row">
                   
                      <div class="col-lg-5">
                      
                            
                                <div class="col-lg-8">
                                      <div style= " margin-bottom:10px">
                                    التاريخ </div>
                                    <asp:TextBox ID="txtdate" runat="server" class="form-control form-white"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                    <span>
                                        <br /><br />
                                        <obout:Calendar ID="Calendar" CultureName="<%#MyDate.getDateCulture()%>" Columns="1" DatePickerSynchronize="true" MonthWidth="300" DateFormat="yyyy/MM/dd" DatePickerImagePath="~/assets/calendar.png" DatePickerMode="true" TextBoxId="txtdate" runat="server"></obout:Calendar>
                                    </span>
                                </div>
                            </div>
               <div class="col-lg-5">
                                            <div class="form-group">
                                                <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label1" runat="server" Text="اسم المعلم المشرف 1 :"></asp:Label></div>
                                                 <asp:DropDownList ID="ddlTeacherSupervisor1" runat="server" CssClass="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                       
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="ddlTeacherSupervisor1" runat="server" ErrorMessage="الرجاء ادخال اسم المعلم المشرف "></asp:RequiredFieldValidator>

                                             </div>
                                      </div>
                        </div>
                        <asp:RegularExpressionValidator ID="DateValidator" ValidationGroup="btnAdd" ForeColor="Red" ControlToValidate="txtdate"
                            Display="Dynamic" EnableClientScript="true" runat="server"
                            ValidationExpression="^\d{4}[/](0[1-9]|1[012])[/](0[1-9]|[12][0-9]|3[01]$)"
                            SetFocusOnError="true">
                       الرجاء ادخال تاريخ صحيح
                        </asp:RegularExpressionValidator>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtdate" runat="server" ErrorMessage="الرجاء ادخال التاريخ"></asp:RequiredFieldValidator>
                        
               
            <br />
                                    <div class="row">
                                        
                                         <div class="col-lg-5">
                                            <div class="form-group">
                                                <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label2" runat="server" Text="اسم المعلم المشرف 2 :"></asp:Label></div>
                                                <asp:DropDownList ID="ddlTeacherSupervisor2" runat="server" CssClass="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                       
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="ddlTeacherSupervisor2" runat="server" ErrorMessage="الرجاء ادخال اسم المعلم المشرف "></asp:RequiredFieldValidator>

                                             </div>
                                      </div> 
                                        <div class="col-lg-5">
                                            <div class="form-group">
                                              <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label15" runat="server" Text="اسم المعلم المناوب 1 :"></asp:Label></div>
                                                <asp:DropDownList ID="ddlTeacherAlternate" runat="server" CssClass="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                       
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="ddlTeacherAlternate" runat="server" ErrorMessage="الرجاء ادخال اسم المعلم المناوب "></asp:RequiredFieldValidator>

                                                   </div>
                                        </div>
                                        </div>
             <div class="row">
                                          
                  <div class="col-lg-5">
                                            <div class="form-group">
                                              <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label5" runat="server" Text="اسم المعلم المناوب 2 :"></asp:Label></div>
                                                <asp:DropDownList ID="ddlTeacherAlternate2" runat="server" CssClass="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                       
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="ddlTeacherAlternate2" runat="server" ErrorMessage="الرجاء ادخال اسم المعلم المناوب "></asp:RequiredFieldValidator>

                                                   </div>
                                        </div>
                 <div class="col-lg-5">
                                            <div class="form-group">
                                              <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label6" runat="server" Text="اسم المعلم المناوب 3 :"></asp:Label></div>
                                                <asp:DropDownList ID="ddlTeacherAlternate3" runat="server" Class="chosen-select AutherDrop form-control form-white"></asp:DropDownList>
                       
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="ddlTeacherAlternate3" runat="server" ErrorMessage="الرجاء ادخال اسم المعلم المناوب "></asp:RequiredFieldValidator>

                                                   </div>
                                        </div>
             </div> 
                <div class="row">
                     
                                                 <div class="col-lg-5">
                                            <div class="form-group">
                                                <div style= " margin-bottom:10px">
                                                <asp:Label ID="Label4" runat="server" Text="ملاحظات:"></asp:Label></div>
                                                <asp:TextBox ID="txtNote" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                                            </div>
                                        </div>  </div>     
                                         
                                           
                                                 
                                    
                  
                                           <div class="col-lg-4" style="margin-right:20px;">
                                            <div class="form-group">
                                               <asp:Button ID="btnAdd" runat="server"  OnClick="btnAdd_Click" CssClass="btn btn-primary btn-embossed" Text="إضافة" ValidationGroup="btnAdd"/>
                                            </div>
                                        </div>
 
                                   </div>
    </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
      <%--   <script src="<%=Page.ResolveUrl("~/")%>assets/global/plugins/bootstrap/js/jasny-bootstrap.min.js"></script>--%>
     <script src="<%=Page.ResolveUrl("~/")%>assets/Select/select2.js"></script>

    <script>
        $(document).ready(function () { $(".chosen-select").select2(); });
    </script>
</asp:Content>

