using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Paturo.Libs
{
    public class AccountManager
    {
        #region Account Login and Register
        public bool checkUsername(String email_address)
        {
        
                string query = "select count(*) from PERSONAL_INFO where email_address = '" + email_address + "'";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand(query, conn);
                
                int result =  Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();

                if (result == 1) 
                    return true;
            
            return false;

        }

        public bool checkPassword(String password)
        {

                string query = "select count(*) from PERSONAL_INFO where password = '" + password + "'";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand(query, conn);

                int result =  Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();

                if (result == 1)
                    return true;

            return false;
        }

        public bool checkLogIn(String email_address, String password)
        {

            if (checkUsername(email_address) && checkPassword(password))
                return true;

            return false;
            
        }

        public bool createAccount(String email_address, String password, String last_name, String first_name, String middle_name, int birth_date, int birth_month, int birth_year, string gender, string civil_status, string nationality, string contact_num, string province, string city, string zipcode)
        {
            if (!checkUsername(email_address))
            {
                try
                {

                    string insertQuery = "insert into PERSONAL_INFO (email_address, password, last_name, first_name, middle_name, birth_day, birth_month, birth_year, gender, civil_status, nationality, contact_num, province, city, zipcode) values (@Email, @Password, @LName, @FName, @MName, @BDay, @BMonth, @BYear, @Gender, @CStatus, @Nationality, @CNum, @Province, @City, @ZCode)";

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@Email", email_address);
                    com.Parameters.AddWithValue("@Password", password);
                    com.Parameters.AddWithValue("@LName", last_name);
                    com.Parameters.AddWithValue("@FName", first_name);
                    com.Parameters.AddWithValue("@MName", middle_name);
                    com.Parameters.AddWithValue("@BDay", birth_date);
                    com.Parameters.AddWithValue("@BMonth", birth_month);
                    com.Parameters.AddWithValue("@BYear", birth_year);
                    com.Parameters.AddWithValue("@Gender", gender);
                    com.Parameters.AddWithValue("@CStatus", civil_status);
                    com.Parameters.AddWithValue("@Nationality", nationality);
                    com.Parameters.AddWithValue("@CNum", contact_num);
                    com.Parameters.AddWithValue("@Province", province);
                    com.Parameters.AddWithValue("@City", city);
                    com.Parameters.AddWithValue("@ZCode", zipcode);
                    com.ExecuteNonQuery();
                    conn.Close();

                    return true;
                }
                catch
                {
                    return false;
                }
            }
            return false;
        }
        #endregion

        #region Account Profile Edit
        public bool editAccount(String email_address, String password, String last_name, String first_name, String middle_name, int birth_date, int birth_month, int birth_year, string gender, string civil_status, string nationality, string contact_num, string province, string city, string zipcode)
        {
            try
            {
                string insertQuery = "update PERSONAL_INFO password = @Password, last_name = @LName, first_name = @FName, middle_name = @MName, birth_day = @BDay, birth_month = @BMonth, birth_year = @BYear, gender = @Gender, civil_status = @CStatus, nationality = @Nationality, contact_num = @CNum, province = @Province, city = @City, zipcode = @ZCode where email_address = @Email";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Email", email_address);
                com.Parameters.AddWithValue("@Password", password);
                com.Parameters.AddWithValue("@LName", last_name);
                com.Parameters.AddWithValue("@FName", first_name);
                com.Parameters.AddWithValue("@MName", middle_name);
                com.Parameters.AddWithValue("@BDay", birth_date);
                com.Parameters.AddWithValue("@BMonth", birth_month);
                com.Parameters.AddWithValue("@BYear", birth_year);
                com.Parameters.AddWithValue("@Gender", gender);
                com.Parameters.AddWithValue("@CStatus", civil_status);
                com.Parameters.AddWithValue("@Nationality", nationality);
                com.Parameters.AddWithValue("@CNum", contact_num);
                com.Parameters.AddWithValue("@Province", province);
                com.Parameters.AddWithValue("@City", city);
                com.Parameters.AddWithValue("@ZCode", zipcode);
                com.ExecuteNonQuery();
                conn.Close();

                return true;
            }
            catch
            {
                return false;
            }
        }
        #endregion

        #region Account Info Getters
        public String getLastName(String email_address)
        {
            try
            {
                string insertQuery = "select last_name from PERSONAL_INFO where email_address = @Email";

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Email", email_address);
                
                conn.Open();
                String value = com.ExecuteScalar().ToString();
                conn.Close();

                return value;
            }
            catch
            {
                return "ERROR";
            }          
        }

        #endregion

    }

}