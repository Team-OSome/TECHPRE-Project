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
    public class ScheduleManager
    {

        public bool addSchedule(String day, String time)
        {
            try
            {
                PreferenceManager pm = new PreferenceManager();
                string insertQuery;
                int id = pm.getTopPrefID();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                insertQuery = "insert into [T.P.SCHEDULE] (pref_id, day, time) values (@PrefID, @Day, @Time);";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@PrefID", id);
                com.Parameters.AddWithValue("@Day", day);
                com.Parameters.AddWithValue("@Time", time);
                com.ExecuteNonQuery();

                conn.Close();

                return true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Schedule");
                return false;
            }
        }

        public String getSelectedDay(String pref_id)
        {
            String day = "";
            try
            {
                string query;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                query = "select day from [T.P.SCHEDULE] where pref_id = '" + pref_id +"' ";
                SqlCommand com = new SqlCommand(query, conn);
                day = com.ExecuteScalar().ToString();

                

                /*
                query = "select time from [T.P.SCHEDULE] where pref_id = '" + pref_id + "' ";
                com = new SqlCommand(query, conn);
                time = com.ExecuteScalar().ToString();    
                */
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            return day;           
        }

        public String getSelectedTime(String pref_id)
        {
            String time = "";
            try
            {
                string query;

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();

                query = "select time from [T.P.SCHEDULE] where pref_id = '" + pref_id + "' ";
                SqlCommand com = new SqlCommand(query, conn);
                time = com.ExecuteScalar().ToString();    

                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            return time;
        }

    }

}