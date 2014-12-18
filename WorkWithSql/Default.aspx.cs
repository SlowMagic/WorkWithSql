using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;

namespace WorkWithSql
{
   
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection _connection; 
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlConnect =  ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString;
            _connection = new SqlConnection(sqlConnect);
            _connection.Open();
        }
       protected void  Page_Unload(object sender,EventArgs e)
        {
           if(_connection != null && _connection.State != ConnectionState.Closed)
           {
               _connection.Close();
           }
        }

       protected void Button1_Click(object sender, EventArgs e)
       { 
           try
           {
               SqlCommand insert = new SqlCommand("INSERT INTO Users(Name,Surname,Age,Adress) VALUE (@Name,@Surname,@Age,@Adress)");
               insert.Parameters.AddWithValue("Name",Name.Text);
               insert.Parameters.AddWithValue("Surname", Surname.Text);
               insert.Parameters.AddWithValue("Age",Age.Text);
               insert.Parameters.AddWithValue("Adress", Adress.Text);
               insert.ExecuteNonQuery();
           }
           catch(Exception ex)
           {
               ReslutAll.Text = "Error" + ex.Message;
               ReslutAll.ForeColor = Color.Red;
           }
       }

      
        
    }
}