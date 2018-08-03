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
    /// Interaction logic for Customer.xaml
    /// </summary>
    public  partial class Customer : MetroWindow
    {
        public Customer()
        {
            InitializeComponent();
            
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());
            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();
                SqlDataReader myReader = null;


                SqlCommand sqlcomm = new SqlCommand(conn.getVrfyCard(), sqlcon);
                //sqlcomm.Parameters.AddWithValue("@CardType", rbtnMasterCard.IsChecked);
                //sqlcomm.Parameters.AddWithValue("@CardType", rbtnVisaCard.IsChecked);
                //sqlcomm.Parameters.AddWithValue("@CardType", rbtnDebitCard.IsChecked);
                sqlcomm.Parameters.AddWithValue("@CardNum", CardNumBox.Text.Trim());
                sqlcomm.Parameters.AddWithValue("@PIN", PinBox.Password);

                myReader = sqlcomm.ExecuteReader();
                Boolean valid = false;

                while (myReader.Read())
                {
                    mainGrid.Visibility = System.Windows.Visibility.Hidden;
                    
                    if (myReader.GetString(2) == CardNumBox.Text && myReader.GetString(3) == PinBox.Password)
                    {
                        valid = true;
                        menuGrid.Visibility = System.Windows.Visibility.Visible;
                        
                    }

                }
                if (valid == false)
                {
                   this.ShowMessageAsync("Warning", "Invalid Information");
                }

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

        private void ConfirmButton_Click(object sender, RoutedEventArgs e)
        {

            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());
            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlDataReader myReader = null;
               // SqlDataReader Reader = null;

                SqlCommand sqlcomm = new SqlCommand(conn.getWithdrawCash(), sqlcon);
                sqlcomm.Parameters.AddWithValue("@WithdrawCash", WithdrawTextBox.Text.Trim());
                sqlcomm.Parameters.AddWithValue("@CardNum",CardNumBox.Text.Trim());


                myReader = sqlcomm.ExecuteReader();
                this.ShowMessageAsync("", "$" + WithdrawTextBox.Text.Trim() + " withdrawn successfully");

                //SqlCommand sqlcomm2 = new SqlCommand(conn.GetDateTime(), sqlcon);
                //sqlcomm2.Parameters.AddWithValue("@WithdrawCash", WithdrawTextBox.Text.Trim());
                //sqlcomm2.Parameters.AddWithValue("@CardNum", CardNumBox.Text.Trim());
                //Reader = sqlcomm2.ExecuteReader();


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

        private void WithdrawButton_Click(object sender, RoutedEventArgs e)
        {
            BalanceStackPanel.Visibility = System.Windows.Visibility.Hidden;
            TransactionDataGrid.Visibility = System.Windows.Visibility.Hidden;
            WithdrawStackPanel.Visibility = System.Windows.Visibility.Visible;
        }

        private void BalanceButton_Click(object sender, RoutedEventArgs e)
        {
            WithdrawStackPanel.Visibility = System.Windows.Visibility.Hidden;
            TransactionDataGrid.Visibility = System.Windows.Visibility.Hidden;
            BalanceStackPanel.Visibility = System.Windows.Visibility.Visible;

            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());

            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlCommand sqlcomm = new SqlCommand(conn.getShowBalance(), sqlcon);
                sqlcomm.Parameters.AddWithValue("@CardNum", CardNumBox.Text.Trim());

                SqlDataReader Reader = null;
                Reader = sqlcomm.ExecuteReader();
                Reader.Read();
                Balance.Text = Convert.ToString(Reader["Balance"].ToString());
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

        private void HistoryButton_Click(object sender, RoutedEventArgs e)
        {
            WithdrawStackPanel.Visibility = System.Windows.Visibility.Hidden;
            BalanceStackPanel.Visibility = System.Windows.Visibility.Hidden;
            TransactionDataGrid.Visibility = System.Windows.Visibility.Visible;

            Connection conn = new Connection();
            SqlConnection sqlcon = new SqlConnection(conn.getString());

            try
            {
                if (sqlcon.State == ConnectionState.Closed)
                    sqlcon.Open();

                SqlCommand Trancomm = new SqlCommand(conn.GetTransaction(), sqlcon);
                Trancomm.ExecuteNonQuery();

                SqlDataAdapter da = new SqlDataAdapter(Trancomm);
                DataTable dt = new DataTable("Transaction_history");

                da.Fill(dt);
                TransactionDataGrid.ItemsSource = dt.DefaultView;
                da.Update(dt);
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

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            menuGrid.Visibility = System.Windows.Visibility.Hidden;
            mainGrid.Visibility = System.Windows.Visibility.Visible;
        }
    }
}
