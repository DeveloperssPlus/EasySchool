<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Notfication.aspx.cs" Inherits="Notfication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
           <script>
        function openModal() {
            $('#modal').modal('show');
        }
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="Server">
    
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title"><strong>Colored</strong> Header</h4>
                </div>
                <div class="modal-body">
                    <p>Want colors? Click on a color to switch header look:</p>
                    <div class="p-t-20 m-b-20 p-l-40">
                        <ul class="colors-list color-header">
                            <li class="dark"></li>
                            <li class="red"></li>
                            <li class="green"></li>
                            <li class="blue active"></li>
                            <li class="aero"></li>
                            <li class="gray"></li>
                            <li class="orange"></li>
                            <li class="pink"></li>
                            <li class="purple"></li>
                        </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary btn-embossed" data-dismiss="modal">Save changes</button>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12 t-center m-b-20 border-bottom">
            <button type="button" onclick="addSuccess('تمت الاضافة بنجاح');" class="btn btn-dark btn-rounded m-t-10 m-r-10">Show Notification</button>
        </div>

        <div class="col-md-12 t-center m-b-20 border-bottom">
            <button type="button" onclick="addfalied('حدث خطأ ');" class="btn btn-dark btn-rounded m-t-10 m-r-10">Show Notification</button>
        </div>

        <div class="col-md-12 t-center m-b-20 border-bottom">
            <button type="button" onclick="openModal();" class="btn btn-success btn-rounded m-t-10 m-r-10">Show Modal</button>
        </div>


        <asp:Button ID="Button1" runat="server" Text="MODAL" OnClick="Button1_Click"/>
    </div>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="scripts" runat="Server">

</asp:Content>

