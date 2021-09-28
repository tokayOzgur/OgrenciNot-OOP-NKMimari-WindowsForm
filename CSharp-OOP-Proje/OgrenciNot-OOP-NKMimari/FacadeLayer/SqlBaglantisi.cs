using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FacadeLayer
{
    public class SqlBaglantisi
    {
        public static SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=DBTestKatman; Integrated Security=True");
    }
}

//(localdb)\MSSQLLocalDB