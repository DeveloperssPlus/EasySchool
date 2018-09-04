using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IAFunction" in both code and config file together.
[ServiceContract]
public interface IAFunction
{
    [OperationContract]
    bool Login(string username, string password);

    [OperationContract]
    string getRole(string username);
}
