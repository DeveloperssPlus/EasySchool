<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Employee_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">

    <asp:HiddenField ID="IncommingId"  runat="server" />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">

        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title">
                    <asp:Label ID="lblTitle" runat="server" ></asp:Label>
             </h4>   </div>
                <div class="modal-body">
                     <div class="row">
                        <div class="col-md-12">
                            <iframe runat="server" id="pdfFrame" class="form-control" style="height: 550px; padding: 0px;"></iframe>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btnSeen" runat="server" CssClass="btn btn-primary btn-embossed" Text="تم الاطلاع على التعميم" OnClick="btnSeen_Click" />
                </div>
            </div>
        </div>
        </div>
</asp:PlaceHolder>



    <div class="panel">
        <img src="../assets/admin/page-builder/images/water.png" width="450" height="400" class="water" />
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script>

        $('#modal').modal({ backdrop: 'static', keyboard: false })
        $('#modal').modal('show');
    </script>
</asp:Content>

