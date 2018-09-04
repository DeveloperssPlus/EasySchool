<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LibraryClassVisitRequest.aspx.cs" Inherits="Library_LibraryClassVisitRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        function openModal(idd) {
            $('#' + idd).modal('show');
        }
    </script>

        
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
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="Server">
    <div class="panel">
        <div class="panel-header">
            <h3><i class="fa fa-book" aria-hidden="true"></i>&nbsp;سجل زيارات الفصول

                <strong>
                    <asp:LinkButton runat="server"  OnClick="btnPrint_Click" style="float: left;">طباعة السجل
                         </asp:LinkButton>

                </strong>
            </h3>
        </div>
        <div class="panel-body">
            <div class="col-md-12">

                <div class="row">
                    <div class="col-lg-6">
                        <asp:Label ID="Label4" runat="server" Text="الأسبوع :"></asp:Label>
                        <asp:DropDownList ID="ddlWeek" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:OnlineSchoolConnectionString %>' SelectCommand="SELECT Constants.value, Weeks.startDate, Weeks.type, Weeks.Name, Weeks.Id FROM Weeks INNER JOIN Constants ON Weeks.type = Constants.Id WHERE (Constants.value = N'دوام')"></asp:SqlDataSource>
                    </div>
                    <asp:Button ID="btnView" runat="server" Text="عرض" OnClick="btnView_Click" CssClass="btn btn-success" />
                    <%--<asp:Button ID="btnPrint" runat="server" Text="طباعة" OnClick="btnPrint_Click" CssClass="btn btn-primary" />--%>
                </div>
                <br />
                <div class="row">
                    التاريخ
                    <asp:Label runat="server" ID="lblToday" ForeColor="Blue"></asp:Label>
</div>                
                <br />
                <br />

                <div class="row">

                    <table class="table table-hover datatable table-bordered" style="font-size: small;">
                        <thead>
                            <tr>
                                <th style="width: 10%">اليوم و التاربخ</th>
                                <th style="width: 15%">الحصة الأولى</th>
                                <th style="width: 15%">الحصة الثانية</th>
                                <th style="width: 15%">الحصة الثالثة</th>
                                <th style="width: 15%">الحصة الرابعة</th>
                                <th style="width: 15%">الحصة الخامسة</th>
                                <th style="width: 15%">الحصة السادسة</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:ListView ID="lstVisits" runat="server" OnItemDataBound="lstVisits_ItemDataBound">
                                <ItemTemplate>
                                    <tr>
                                        <td>

                                            <%# MyDate.getDay((DateTime)Eval("Date")) %>
                                            <br />
                                            <%# MyDate.getDate(Eval("Date").ToString()) %>
                                        </td>
                                        <asp:ListView ID="lstDays" runat="server" OnItemCommand="lstDays_ItemCommand">
                                            <ItemTemplate>
                                                <td>
                                                    <div>
                                                        <asp:PlaceHolder runat="server" Visible='<%# Eval("isNull") %>'>

                                                            <asp:LinkButton runat="server" CommandName="add" CommandArgument='<%#Eval("date")+","+ Eval("Period")%>'>
                                                            <i class="fa fa-plus"></i>
                                                            </asp:LinkButton>
                                                        </asp:PlaceHolder>
                                                        <asp:PlaceHolder runat="server" Visible='<%#!(bool) Eval("isNull") %>'>

                                                            <asp:LinkButton runat="server" CommandArgument='<%# Eval("Id")%>' CommandName="details">
                                                            
                                                            <%#Eval("classId") %>
                                                            <br />
                                                           <%#Eval("subjectName") %>
                                                            <div class="badge badge-success" runat="server" visible=' <%#(bool)Eval("IsDone") %> '>تمت الزيارة</div>
                                                          
                                                            </asp:LinkButton>
                                                        </asp:PlaceHolder>
                                                    </div>
                                                </td>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                        </tbody>
                    </table>


                </div>

            </div>
        </div>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="modal fade" id="modalAdd" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title">حجز حصة في المكتبة</h4>
                </div>
                <div class="modal-body">
                    <p>الرجاء ادخال البيانات التالية</p>
                    <div class="row">
                        <div class="col-md-12">
                            <asp:HiddenField ID="hiddenDate" runat="server" />
                            <div class="row">
                                <div class="col-md-4">
                                    اليوم
                        <asp:Label runat="server" ID="lblDay" ForeColor="Blue">  </asp:Label>
                                </div>

                                <div class="col-md-4">
                                    التاريخ
                        <asp:Label runat="server" ID="lblDate" ForeColor="Blue"></asp:Label>
                                </div>

                                <div class="col-md-4">
                                    الحصة
                          <asp:Label runat="server" ID="lblPeriod" ForeColor="Blue">  </asp:Label>

                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="form-group">
                                    <div class="col-lg-3">

                                        <asp:Label ID="Label2" runat="server" Text="اسم المعلم :"></asp:Label>
                                    </div>
                                    <div class="col-lg-5">
                                        <asp:DropDownList ID="DDlTeacherName" CssClass="chosen-select AutherDrop form-control form-white" runat="server" DataTextField="Name" DataValueField="IdentityNumber"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">

                                <div class="form-group">
                                    <div class="col-lg-3">

                                        <asp:Label ID="Label1" runat="server" Text="الصف :"></asp:Label>
                                    </div>
                                    <div class="col-lg-5">
                                        <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control form-white"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">

                                <div class="form-group">
                                    <div class="col-lg-3">

                                        <asp:Label ID="Label3" runat="server" Text="المادة :"></asp:Label>
                                    </div>
                                    <div class="col-lg-5">

                                        <asp:DropDownList ID="ddlSubject" runat="server" class="form-control form-white" DataTextField="Name" DataValueField="Id"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnAdd" runat="server" CssClass="btn red-haze btn btn-primary" Text="إضافة" OnClick="btnAdd_Click" ValidationGroup="validation" />

                        <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">إغلاق</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="modalDetails" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icons-office-52"></i></button>
                    <h4 class="modal-title">تفاصيل حجز حصة في المكتبة</h4>
                </div>
                <div class="modal-body">
                <%--    <p>الرجاء ادخال البيانات التالية</p>--%>
                    <asp:HiddenField  runat="server" ID="hiddenId"/>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    اليوم
                        <asp:Label runat="server" ID="lblDay2" ForeColor="Blue">  </asp:Label>
                                </div>

                                <div class="col-md-6">
                                    التاريخ
                        <asp:Label runat="server" ID="lblDate2" ForeColor="Blue"></asp:Label>
                                </div>


                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    اسم المعلم 

                                            <asp:Label ID="lblTeacher" runat="server" ForeColor="Blue"></asp:Label>


                                </div>

                                <div class="col-md-6">
                                    الحصة
                          <asp:Label runat="server" ID="lblPeriod2" ForeColor="Blue">  </asp:Label>

                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6">
                                    الصف
                                    <asp:Label ID="lblClass" runat="server" ForeColor="Blue"></asp:Label>
                                </div>

                                <div class="col-md-6">
                                    المادة
                           <asp:Label runat="server" ID="lblSubject" ForeColor="Blue">  </asp:Label>

                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-md-6">

                                <asp:CheckBox ID="chxDone" runat="server" Checked="false"/>
                                تمت الزيارة
                            </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnDone" runat="server" CssClass="btn red-haze btn btn-primary" Text="حفظ" OnClick="btnDone_Click" />

                        <button type="button" class="btn btn-default btn-embossed" data-dismiss="modal">إغلاق</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">

</asp:Content>

