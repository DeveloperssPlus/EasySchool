<%@ Application Language="C#" %>
<%@ Import Namespace="FluentScheduler" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        GemBox.Document.ComponentInfo.SetLicense("DTZX-HTZ5-B7Q6-2GA6");
      //  new Aspose.Words.License().SetLicense(LicenseHelper.License.LStream);
        new Aspose.Pdf.License().SetLicense(LicenseHelper.License.LStream);


        TaskManager.Initialize(new SchedulerTasks(Server.MapPath("~/Temp")));
        GemBox.Spreadsheet.SpreadsheetInfo.SetLicense("ETZW-AT28-33Q6-1HAS");

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
