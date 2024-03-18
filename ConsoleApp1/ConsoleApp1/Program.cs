using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceReference1.ClienteServiceClient client = new ServiceReference1.ClienteServiceClient();
            var result = client.ListarCliente();
        }
    }
}
