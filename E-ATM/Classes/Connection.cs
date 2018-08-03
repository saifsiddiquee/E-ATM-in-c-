using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace E_ATM.Classes
{
   class Connection
    {
       
        //Connection String Query
        private static string conString = "Data Source=TROJANHORSE;Initial Catalog='E-ATM database';User ID=sa;Password=P@$$w0rd" ;

        public string getString()
        {
            return conString;
        }

        // Login Query
        private static string logInQuery = "Select * from Login_data where User_name = @Username and Password = @Pass";
        public string getLogInQuery()
        {
            return logInQuery;
        }

       //Role checking Query 
       private static string role = "Select Role from Login_data where User_name = @UserName";
       public string getRole()
       {
           return role;
       }

       //Customer table shwoing Query 
       private static string CustomerLoginData = "select * from Account_info";
       public string getCustomerTable()
       {
           return CustomerLoginData;
       }

       //Bank table Showing Query
       private static string BankTable = "select * from Bank_Info";
       public string getBankTable()
       {
           return BankTable;
       }

       // card verification query
       private static string VerifyCard = "Select * from Customer_data where Card_num = @CardNum and Pin_num = @PIN";
       public string getVrfyCard()
       {
           return VerifyCard;
       }

       //Cash Withdraw query
       private static string WithdrawCash = "Update Account_info set Balance = Balance - @WithdrawCash where Card_numbers = @CardNum ";
       public string getWithdrawCash()
       {
           return WithdrawCash;
       }

       //Show balance query
       private static string ShowBalance = "Select Balance from Account_info where Card_numbers = @CardNum" ;
       public string getShowBalance()
       {
           return ShowBalance;
       }

       //Show transaction history query

       private static string Transaction = "Select Transaction_history.T_date, Transaction_history.Withdraw_amount from Transaction_history,Account_info where Account_info.Card_numbers = Transaction_history.Card_numbers";
       public string GetTransaction()
       {
           return Transaction;
       }

       private static string DateTime = "insert into Transaction_history values (@CardNum,CURRENT_TIMESTAMP,@WithdrawCash) where Transaction_history.";
       public string GetDateTime()
       {
           return DateTime;
       }

       // static string login = "Select * from Login_data where User_name = '" + UserTextBox.Text + "' and Password = '" + passBox.Password + "'";

    }
}
