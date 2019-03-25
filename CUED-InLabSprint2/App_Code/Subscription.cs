using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Subscription
{

    private int subID;
    private int subLevel;
    private String subOwner;
    private String subDescription;
    private double cost;
    private String LastUpdated;
    private string LastUpdatedBy;



    public Subscription(int subLevel, String subOwner, String subDescription, double cost)
    {
        setSubLevel(subLevel);
        setSubOwner(subOwner);
        setSubDescrription(subDescription);
        setCost(cost);
    }


    public int getSubID()
    {
        return this.subID;
    }

    public void setSubID(int subID)
    {
        this.subID = subID;
    }

    public int getSubLevel()
    {
        return this.subLevel;
    }

    public void setSubLevel(int subLevel)
    {
        this.subLevel = subLevel;
    }

    public string getSubOwner()
    {
        return this.subOwner;
    }

    public void setSubOwner(String subowner)
    {
        this.subOwner = subowner;
    }

    public string getSubDescription()
    {
        return this.subDescription;
    }

    public void setSubDescrription(String subdescription)
    {
        this.subDescription = subdescription;
    }

    public double getCost()
    {
        return this.cost;
    }

    public void setCost(double Cost)
    {
        this.cost = Cost;
    }

    public String getLastUpdatedBy()
    {
        return this.LastUpdatedBy;
    }
    public void setLastUpdatedBy(String lastUpdatedBy)
    {
        this.LastUpdatedBy = lastUpdatedBy;
    }

    public String getLastUpdated()
    {
        return DateTime.Today.ToShortDateString();
    }

    public void setLastupdated(String lastupdated)
    {
        this.LastUpdated = DateTime.Today.ToShortDateString();
    }
}


    





