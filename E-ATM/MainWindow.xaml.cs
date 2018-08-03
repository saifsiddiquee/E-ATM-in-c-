using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Behaviours;
using E_ATM.Classes;

namespace E_ATM
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : MetroWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Log In Button 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_Click(object sender, RoutedEventArgs e)
        {


            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());
            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlDataReader myReader = null;

                SqlCommand sqlcomm = new SqlCommand(conn.getLogInQuery(), sqlcon);
                sqlcomm.Parameters.AddWithValue("@UserName", UserTextBox.Text.Trim());
                sqlcomm.Parameters.AddWithValue("@Pass", passBox.Password);
    
                myReader = sqlcomm.ExecuteReader();
                Boolean valid = false;

                while (myReader.Read())
                {
                this.Hide();
              
                SqlCommand urole = new SqlCommand(conn.getRole(), sqlcon);

                if(myReader.GetString(1) == UserTextBox.Text && myReader.GetString(2) == passBox.Password)
                {
                    valid = true;
                
                if (myReader.GetString(3) == "Admin")
                {

                    Admin a = new Admin();
                    a.Show();
                }
                else if (myReader.GetString(3) == "Customer")
                {
                    
                    Customer cu = new Customer();
                    cu.Show();
                }
                else if (myReader.GetString(3) == "Bank")
                {
                    
                    Bank b = new Bank();
                    b.Show();
                }
                }

            }
                if (!valid)
                {
                    var metroWindow = (Application.Current.MainWindow as MetroWindow);
                    metroWindow.ShowMessageAsync("Warning", "Wrong Username or Password");
                }
         
            UserTextBox.Clear();
            passBox.Clear();
            }

            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                sqlcon.Close();
            }   
        }

    }
}

