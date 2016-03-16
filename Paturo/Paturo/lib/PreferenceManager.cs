using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using Paturo.Libs;

namespace Paturo.lib
{
    public class PreferenceManager
    {

        public bool addPreference(String email, String category, String subject, String description, String target_students, String price_info)
        {
            try
            {
                AccountManager am = new AccountManager();
                string insertQuery;
                int id = am.getID(email);

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                insertQuery = "insert into [T.PREFERENCES] (id, category, subject, description, target_students, price_info) values (@ID, @Category, @Subject, @Description, @TargetStudents, @PriceInfo);";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@ID", id);
                com.Parameters.AddWithValue("@Category", category);
                com.Parameters.AddWithValue("@Subject", subject);
                com.Parameters.AddWithValue("@Description", description);
                com.Parameters.AddWithValue("@TargetStudents", target_students);
                com.Parameters.AddWithValue("@PriceInfo", price_info);
                com.ExecuteNonQuery();

                conn.Close();

                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Preference");
                return false;
            }
        }

        public int getTopPrefID()
        {
            string getIDQuery;
            int id;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            getIDQuery = "select TOP 1 pref_id from [T.PREFERENCES];";
            SqlCommand com = new SqlCommand(getIDQuery, conn);
            id = Convert.ToInt32(com.ExecuteScalar().ToString());

            return id;
        }
    }
}