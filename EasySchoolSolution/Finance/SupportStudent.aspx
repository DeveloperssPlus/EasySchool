<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SupportStudent.aspx.cs" Inherits="Finance_SupportStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
      <div class="panel">
            <div class="panel-header">
                <a class="list-group-item" href="#"><i class="icon-puzzle font-red-flamingo" aria-hidden="true" ></i>&nbsp; إعانات تصرف للطلاب ذوي الاحتياجات المادية</a>
            </div>
            <div class="panel-body">
                <div class="col-lg-12">
                    <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="lblNoBill" runat="server" Text="رقم الفاتورة  :"></asp:Label>
                             <asp:TextBox ID="txtNoBill" runat="server" CssClass="form-control form-white"></asp:TextBox>

                        </div>
                    </div>
               
                    
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="lblDateMeetings" runat="server" Text="المبلغ :"></asp:Label>
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control form-white"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtPrice" runat="server" ErrorMessage="الرجاء ادخال المبلغ"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>   </div>
                         <div class="row">
                              <div class="col-lg-12">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text=" الملاحظات:"></asp:Label>
                            <asp:TextBox ID="txtNote" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                        </div>
                    </div>
                

                     <div class="col-lg-6">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text=" محتوى الفاتورة:"></asp:Label>
                            <asp:TextBox ID="txtContent" TextMode="MultiLine" runat="server" CssClass="form-control form-white"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtContent" runat="server" ErrorMessage="الرجاء ادخال المحتوى"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                </div>
</div>
           

                  <div class="col-lg-6">
                    <div class="row">
                    <div class="col-lg-8">
                        <asp:Button ID="btnAdd" runat="server"  OnClick="btnAdd_Click" CssClass="btn red-haze btn btn-primary" ValidationGroup="validaiton" Text="اضافة" />
                    </div>
                </div>
                </div>


                </div>
            
                  
               
              
            </div>
     
        

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

