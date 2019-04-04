using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Account
{
    private int AccountID;
    private string username;
    private string password;
    private string LastUpdatedBy;
    private string LastUpdated;

    public static int numOfAccounts;

    public Account(string username, string password)
    {
        setAccountID(numOfAccounts);
        setUsername(username);
        setPassword(password);
       
    }

    public int getAccountID()
    {
        return (this.AccountID);
    }

    public string getUsername()
    {
        return (this.username);
    }

    public string getPassword()
    {
        return (this.password);
    }
    public string getLastUpdatedBy()
    {
        return (this.LastUpdatedBy);
    }

    public string getLastUpdated()
    {
        return (DateTime.Today.ToShortDateString());
    }

        public void setAccountID(int newNumOfAccounts)
    {
        this.AccountID = newNumOfAccounts;
    }

    public void setUsername(string newUsername)
    {
        this.username = newUsername;
    }

    public void setPassword(string newPassword)
    {
        this.password = newPassword;
    }

    public void setLastUpdatedBy(string newLastUpdatedBy)
    {
        this.LastUpdatedBy = "Ruben Torrico";
    }


    public void setLastUpdated(string newLastUpdated)
    {
        this.LastUpdated = DateTime.Today.ToShortDateString();
    }

}