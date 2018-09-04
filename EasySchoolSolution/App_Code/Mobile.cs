using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;

/// <summary>
/// Summary description for Mobile
/// </summary>
public class Mobile
{
    public Mobile()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public enum MobileStatus
    {
        Success,
        NoBalance,
        InvalidUser,
        InvalidType,
        InvalidURL,
        InvalidCountries,
        InvalidSendername,
        SendDisabled,
        Unknown,
    }

    private static MobileStatus Send(string message, string number)
    {
        MobileStatus ms = MobileStatus.Unknown;
        if (System.Configuration.ConfigurationManager.AppSettings["cansend"] == "yes")
        {
            number = IsValidMobileDigits(number);
            WebClient client = new WebClient();
            client.Headers.Add("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; .NET CLR1.0.3705;)");
            client.QueryString.Add("user_name", "developers");
            client.QueryString.Add("user_pass", "5554615");
            client.QueryString.Add("sender", "easy school");
            client.QueryString.Add("type", "2");
            client.QueryString.Add("mobile", number);
            client.QueryString.Add("message", message);
            string baseurl = "http://www.hotsms.ps/sendbulksms.php";
            Stream data = client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();

            switch (s)
            {
                case "1001":
                    ms = MobileStatus.Success;
                    break;
                case "1000":
                    ms = MobileStatus.NoBalance;
                    break;
                case "2000":
                    ms = MobileStatus.InvalidUser;
                    break;
                case "3000":
                    ms = MobileStatus.InvalidType;
                    break;
                case "4000":
                    ms = MobileStatus.InvalidURL;
                    break;
                case "5000":
                    ms = MobileStatus.InvalidCountries;
                    break;
                case "6000":
                    ms = MobileStatus.InvalidSendername;
                    break;

                default:
                    ms = MobileStatus.Unknown;
                    break;
            }
        }
        else
        {
            ms = MobileStatus.SendDisabled;
        }

        return ms;

    }

    public static string MobileSend(string message, string number)
    {
        MobileStatus ms = Send(message, number);
        string retVal="غير معروف";
        switch (ms)
        {
            case MobileStatus.Success:
                retVal = "تم الإرسال بنجاح";
                break;
            case MobileStatus.NoBalance:
                break;
            case MobileStatus.InvalidUser:
                break;
            case MobileStatus.InvalidType:
                break;
            case MobileStatus.InvalidURL:
                break;
            case MobileStatus.InvalidCountries:
                break;
            case MobileStatus.InvalidSendername:
                break;
            case MobileStatus.SendDisabled:
                retVal = "الإرسال معطل";
                break;
            case MobileStatus.Unknown:
                retVal = "خطأ غير معروف";
                break;
            default:
                break;
        }

        return retVal;
    }

    private static string ConvertTextToUnicode(string p)
    {

        int i;
        System.Text.StringBuilder TempMessage = new System.Text.StringBuilder();
        i = 0;
        while (i <= (p.Length - 1))
        {
            TempMessage.Append(Convert.ToString(System.Convert.ToInt32(p[i]), 16).PadLeft(4, '0'));
            i += 1;

        }
        return TempMessage.ToString();

    }


    #region "Private"


    private static string ConvertToUnicode(string val)
    {
        string msg2 = "";
        for (int i = 0; i <= val.Length - 1; i++)
        {
            msg2 += convertToUnicode_ch(val.Substring(i, 1));
        }
        return msg2;

    }



    private static string convertToUnicode_ch(string ch)
    {

        System.Text.UnicodeEncoding class1 = new System.Text.UnicodeEncoding();
        byte[] msg = class1.GetBytes(System.Convert.ToString(ch));
        return IsValidMobileDigits(msg[1] + msg[0].ToString("X"));
    }

    private static string IsValidMobileDigits(string val)
    {
        if (val.Length > 7)
            return val;
        else
            return "966" + val;
    }
    #endregion




}