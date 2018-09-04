<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ExperimentsAdd.aspx.cs" Inherits="Laboratay_ExperimentsAdd" %>

<%@ Register Assembly="obout_Calendar2_Net" Namespace="OboutInc.Calendar2" TagPrefix="obout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <div class="panel">
        <div class="panel-header">
            <h4>

                <i class="fa fa-table" aria-hidden="true"></i>&nbsp; الخطة الفصلية للتجارب العملية
            </h4>
        </div>
        <div class="panel-body">


            <div class="row">
                             <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label8" runat="server" Text="المعلم :"></asp:Label>
                        </div>
                        <asp:DropDownList ID="ddlNoTeacher" runat="server" OnDataBinding="ddlNoTeacher_DataBinding" CssClass="chosen-select AutherDrop form-control form-white">
                        </asp:DropDownList>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label1" runat="server" Text="الفصل   :"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtSemester" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtSemester" runat="server" ErrorMessage=" الرجاء ادخال الفصل   "></asp:RequiredFieldValidator>

                    </div>
                </div>


                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label15" runat="server" Text=" المادة:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtSubject" runat="server" ErrorMessage="الرجاء ادخال اسم المادة  "></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label2" runat="server" Text=" اسم التجربة:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNameExperiment" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtNameExperiment" runat="server" ErrorMessage="الرجاء ادخال اسم التجربة  "></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label3" runat="server" Text=" اسم الكتاب:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNameBook" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtNameBook" runat="server" ErrorMessage="الرجاء ادخال اسم الكتاب   "></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label5" runat="server" Text=" رقم الصفحة :"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtNoPage" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="Dynamic" ForeColor="Red" ValidationGroup="btnAdd" SetFocusOnError="true" ControlToValidate="txtNoPage" runat="server" ErrorMessage="الرجاء ادخال رقم الصفحة    "></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label6" runat="server" Text=" أسبوع التجربة  :"></asp:Label>
                        </div>

                        <asp:TextBox ID="txtWeek"  runat="server" CssClass="form-control form-white"></asp:TextBox>
                                <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="txtWeek" ValidationGroup="btnAdd" ErrorMessage="الرجاء كتابة الاسبوع بالأرقام" ForeColor="Red" />
                  
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-6">
                    <div class="form-group">
                        <div style="margin-bottom: 10px">
                            <asp:Label ID="Label4" runat="server" Text="أدوات التجربة:"></asp:Label>
                        </div>
                        <asp:TextBox ID="txtExperienceTools" runat="server" TextMode="MultiLine" CssClass="form-control form-white"></asp:TextBox>
                    </div>
                </div>
   
            </div>

            <div class="col-lg-6" style="margin-right: 5px;">
                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-embossed" OnClick="btnAdd_Click" Text="إضافة" ValidationGroup="btnAdd" />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

