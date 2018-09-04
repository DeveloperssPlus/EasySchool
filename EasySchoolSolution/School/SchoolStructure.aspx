<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SchoolStructure.aspx.cs" Inherits="School_SchoolStructure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel panel-blue margin-bottom-40">
        <div class="panel-heading">
            <h4><i class="fa fa-sitemap"></i>تشكيل الهيئة الإدارية لمدارس التعليم العام </h4>
        </div>
        <div class="panel-content">
            <div class="row">
                <div class="col-md-12">
                    <iframe runat="server" id="pdfFrame" class="form-control" style="height: 1000px; padding: 0px;"></iframe>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

