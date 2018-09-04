<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaintenanceRequest.aspx.cs" Inherits="Employee_MaintenanceRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
      <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-ban" aria-hidden="true"></i>&nbsp; طلب صيانة</h4>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

               <div class="row">
                    <div class="col-lg-5">

                        <asp:Label ID="Label1" runat="server" Text=" نوع الصيانة  المطلوبة :"></asp:Label>
          <asp:DropDownList ID="ddlTypeMaintenance" runat="server" CssClass="chosen-select AutherDrop form-control form-white">
       <asp:ListItem>اختر النوع</asp:ListItem>
         <asp:ListItem>كهرباء</asp:ListItem>
          <asp:ListItem>سباكة</asp:ListItem>
          <asp:ListItem>نجارة</asp:ListItem>
          <asp:ListItem>تبريد</asp:ListItem>
          <asp:ListItem>تكييف</asp:ListItem>
          <asp:ListItem>كراسي وطاولات</asp:ListItem>
          <asp:ListItem>أخرى</asp:ListItem>
                      </asp:DropDownList>          

                    </div>
                 
                   </div>
                <br />
                
                    
                <br />
                <div class="row">
                   
                      <div class="col-lg-5">


                        <asp:Label ID="Label6" runat="server" Text="نوع الطلب  :"></asp:Label>
                           <br /><br />
                        <asp:RadioButtonList ID="RType" runat="server">
                          
                            <asp:ListItem Value="true">عاجل</asp:ListItem>
                            <asp:ListItem Value="false">عاجل جدا</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="RType" runat="server" ErrorMessage="الرجاء اختيار نوع الطلب"></asp:RequiredFieldValidator>
                        

                    </div>
              
              
                    
                    <div class="col-lg-5">

                     <asp:Label ID="Label3" runat="server" Text="متى يمكن إجراء أعمال الصيانة   :"></asp:Label>
                      <br /><br />
                          <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                          
                            <asp:ListItem Value="true">في الصباح مبكرا</asp:ListItem>
                            <asp:ListItem Value="false"> في الصباح أو المساء</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="RType" runat="server" ErrorMessage="الرجاء اختيار نوع الطلب"></asp:RequiredFieldValidator>
                        
                    </div>
                     
                    
                </div>

                <br />
                <br />
                  <div class="row"> 
                      <div class="col-lg-5">

                        <asp:Label ID="Label2" runat="server" Text="أمل تكليف فريق الصيانة :"></asp:Label>
                        <asp:TextBox ID="txtDo" runat="server" TextMode="MultiLine" class="form-control form-white"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ForeColor="Red" ValidationGroup="validaiton" SetFocusOnError="true" ControlToValidate="txtDo" runat="server" ErrorMessage="الرجاء ادخال ما سيقوم به فريق الصيانة"></asp:RequiredFieldValidator>

                    </div>
                    
                </div>
             
            </div>


          
       
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

