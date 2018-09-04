using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Html2Pdf
/// </summary>
public class Html2Pdf
{
    public static void Html2doc(string htmlText, string templatePath, string outputpath)
    {
        //   var templatePath = Path.Combine((string)AppDomain.CurrentDomain.GetData("DataDirectory"), "TemplateDocument.docx");

        GemBox.Document.DocumentModel document;
        using (var stream = File.OpenRead(templatePath))
            document = GemBox.Document.DocumentModel.Load(stream, GemBox.Document.LoadOptions.DocxDefault);

        document.DefaultCharacterFormat.Language = CultureInfo.GetCultureInfo("ar-SA");
        document.DefaultParagraphFormat.Alignment = GemBox.Document.HorizontalAlignment.Right;
        document.DefaultCharacterFormat.RightToLeft = true;

        document.Bookmarks["HtmlContent"].GetContent(true).LoadText(htmlText, GemBox.Document.LoadOptions.HtmlDefault);

        document.Save(outputpath);
    }

    public static void Html2doc(string htmlText, string outputpath)
    {
        var templatePath = HttpContext.Current.Server.MapPath("~/out.docx");

        GemBox.Document.DocumentModel document = new GemBox.Document.DocumentModel();
        using (var stream = File.OpenRead(templatePath))
            document = GemBox.Document.DocumentModel.Load(stream, GemBox.Document.LoadOptions.DocxDefault);

        document.DefaultCharacterFormat.Language = CultureInfo.GetCultureInfo("ar-SA");
        document.DefaultParagraphFormat.Alignment = GemBox.Document.HorizontalAlignment.Right;
        document.DefaultCharacterFormat.RightToLeft = true;

        document.Bookmarks["HtmlContent"].GetContent(true).LoadText(htmlText, GemBox.Document.LoadOptions.HtmlDefault);

        document.Save(outputpath);
    }

    public static void Html2pdf(string htmlText, string outputpath)
    {
        var tempPath = HttpContext.Current.Server.MapPath("~/Temp/");
        var fname = tempPath + Guid.NewGuid() + ".docx";
        Html2doc(htmlText, fname);

        doc2pdf(fname, outputpath);
    }

    public static void doc2pdf(string docPath, string outputpath)
    {
        Aspose.Words.Document doc = new Aspose.Words.Document(docPath);

        doc.Save(outputpath);
    }
}