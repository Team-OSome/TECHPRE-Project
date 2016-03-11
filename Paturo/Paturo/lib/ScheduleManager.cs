using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Paturo.lib
{
    public class ScheduleManager
    {

        public bool addSchedule(int pref_id, int sched_id, String day, String time)
        {
            try
            {

                string insertQuery = "insert into T.P.SCHEDULE (pref_id, sched_id, day, time) values (@PrefID, @SchedID, @Day, @Time)";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@PrefID", pref_id);
                com.Parameters.AddWithValue("@SchedID", sched_id);
                com.Parameters.AddWithValue("@Day", day);
                com.Parameters.AddWithValue("@Time", time);
                com.ExecuteNonQuery();             
                conn.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }

    }

}