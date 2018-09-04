<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentPatientsDisplay.aspx.cs" Inherits="Employee_StudentPatientsDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h4><i class="fa fa-medkit" aria-hidden="true"></i>&nbsp; كشف بالحالات المرضية للطلاب</h4>
      <strong><a onclick=" prepareFrame('../SchoolForms/form29.aspx')" style="float: left;" href="#">طباعة السجل
                         </a></strong>
               </div>
        <div class="panel-body">


                <div class="row ">
                    <table  class="table table-bordered">   
                         <asp:ListView ID="lstPatients" runat="server" OnDataBinding="lstPatients_DataBinding">
                            <ItemTemplate>
                        <tr>
                            <th class="text-center" style="width: 1%; font-size: 15px" rowspan="2">م</th>
                            <th class="text-center" style="width: 30%; font-size: 15px" rowspan="2">اسم الطالب</th>
                            <th class="text-center" style="width: 10%; font-size: 15px" rowspan="2">الصف</th>
                            <th class="text-center" style="width: 10%; font-size: 15px" colspan="3">هاتف ولي الأمر</th>
                        </tr>
                        <tr>
                            <th style="font-size: 15px" class="text-center">المنزل</th>
                            <th style="font-size: 15px" class="text-center">العمل</th>
                            <th style="font-size: 15px" class="text-center">الجوال</th>
                        </tr>
                    
                                <tr>

                                    <td style="vertical-align: middle; font-size: 15px" rowspan="6" class="text-center">

                                        <%# getCounter() %>
                                    </td>

                                    <td>
                                        <%# Eval("Name") %>
                                    </td>
                                    <td>
                                        <%# Eval("class")%>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblHomeTel" runat="server" Text='<%# Eval("HomeTel") %>'></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label ID="lblWorkTel" runat="server" Text='<%# Eval("WorkTel") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                    </td>
                           
                                </tr>


                                <tr>
                                    <th class="text-center" style=" font-size: 15px" colspan="5">وصــف الحــالة المرضــية</th>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="5" style="width: 75%">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-center" style=" font-size: 15px" colspan="2">الاجراءات المطلوبة عند وقوع الحالة</th>
                                    <th class="text-center" style=" font-size: 15px" colspan="3">التوصيــات</th>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2">
                                        <h5>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Action") %>'></asp:Label>
                                        </h5>
                                    </td>



                                    <td colspan="3" class="text-center">
                                        <h5>

                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Recommendations") %>'></asp:Label>
                                        </h5>
                                    </td>
                                </tr>
                                <tr class="text-center">
                                    <td colspan="2">
                                        <h5></h5>
                                    </td>
                                    <td colspan="3">
                                        <h5></h5>
                                    </td>
                                </tr>

                            </ItemTemplate>
                        </asp:ListView>

                    </table>
                    <br />
                </div>
            </div></div>








</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
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

