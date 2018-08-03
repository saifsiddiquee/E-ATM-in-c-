using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MahApps.Metro.Behaviours;
using System.Data;
using System.Data.SqlClient;
using E_ATM.Classes;


namespace E_ATM
{
    /// <summary>
    /// Interaction logic for Admin.xaml
    /// </summary>
    public partial class Admin : MetroWindow
    {
        public Admin()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Bank Button Principle
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void btnbank_Click(object sender, RoutedEventArgs e)
        {
            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());

            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlCommand BankCommand = new SqlCommand(conn.getBankTable(), sqlcon);
                BankCommand.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(BankCommand);
                DataTable dt = new DataTable("Bank_info");

                da.Fill(dt);

                DataGrid.ItemsSource = dt.DefaultView;
                da.Update(dt);


                sqlcon.Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        /// <summary>
        /// Customer Button principle
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnCustomer_Click(object sender, RoutedEventArgs e)
        {
            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());

            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlCommand CustCommand = new SqlCommand(conn.getCustomerTable(), sqlcon);
                CustCommand.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(CustCommand);
                DataTable dt = new DataTable("Account_info");

                da.Fill(dt);

                DataGrid.ItemsSource = dt.DefaultView;
                da.Update(dt);  

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                sqlcon.Close();
            }
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            //this.Close();
            System.Windows.Application.Current.Shutdown();
        }
    }
}