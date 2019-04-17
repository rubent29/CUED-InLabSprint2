using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JobPosting
/// </summary>
public class JobPosting
{
    private int postingID;
    private string jobTitle;
    private string jobType;
    private string companyName;
    private string city;
    private string state;
    private string payStatus;
    private string jobDescription;
    private string dateCreated;
    private string deadline;
    private double GPA;
    private int age;
    private string LastUpdatedBy;
    private string LastUpdated;


    public static int numOfPostings;

    public JobPosting(String jobTitle, String jobType, String companyName, String city, String state,
                                       String payStatus, String jobDescription, String dateCreated, String deadline, double GPA,int age,
                                       String LastUpdatedBy, String LastUpdated)
    {
        setPostingID(numOfPostings);
        setJobTitle(jobTitle);
        setJobType(jobType);
        setCompanyName(companyName);
        setCity(city);
        setState(state);
        setPayStatus(payStatus);
        setJobDescription(jobDescription);
        setDateCreated(dateCreated);
        setDeadline(deadline);
        setLastUpdatedBy(LastUpdatedBy);
        setLastUpdated(LastUpdated);
        setGPA(GPA);
        setAge(age);
        numOfPostings++;

    }

    public int getPostingID()
    {
        return (this.postingID);
    }

    public string getJobTitle()
    {
        return (this.jobTitle);
    }

    public string getJobType()
    {
        return (this.jobType);
    }

    public string getCompanyName()
    {
        return (this.companyName);
    }

    public string getCity()
    {
        return (this.city);
    }

    public string getState()
    {
        return (this.state);
    }

    public string getLocation()
    {
        return (this.city + ", " + this.state);
    }

    public string getPayStatus()
    {
        return (this.payStatus);
    }

    public string getJobDescription()
    {
        return (this.jobDescription);
    }

    public string getDateCreated()
    {
        return (DateTime.Today.ToShortDateString());
    }

    public string getDeadline()
    {
        return (this.deadline);
    }

    public string getLastUpdatedBy()
    {
        return (this.LastUpdatedBy);
    }

    public string getLastUpdated()
    {
        return (DateTime.Today.ToShortDateString());

    }
    public double getGPA()
    {
        return (this.GPA);

    }
    public int getAge()
    {
        return (this.age);

    }





    public void setPostingID(int newPostingID)
    {
        this.postingID = newPostingID;
    }

    public void setJobTitle(string newJobTitle)
    {
        this.jobTitle = newJobTitle;
    }

    public void setJobType(string newJobType)
    {
        this.jobType = newJobType;
    }

    public void setCompanyName(string newCompanyName)
    {
        this.companyName = newCompanyName;
    }

    public void setCity(string newCity)
    {
        this.city = newCity;
    }

    public void setState(string newState)
    {
        this.state = newState;
    }

    public void setPayStatus(string newPayStatus)
    {
        this.payStatus = newPayStatus;
    }


    public void setJobDescription(string newJobDescription)
    {
        this.jobDescription = newJobDescription;
    }

    public void setDateCreated(string newDateCreated)
    {
        this.dateCreated = DateTime.Today.ToShortDateString();
    }


    public void setDeadline(string newDeadline)
    {
        this.deadline = newDeadline;
    }


    public void setLastUpdatedBy(string newLastUpdatedBy)
    {
        this.LastUpdatedBy = "Ruben Torrico";
    }


    public void setLastUpdated(string newLastUpdated)
    {
        this.LastUpdated = DateTime.Today.ToShortDateString();
    }

    public void setGPA(double gpa)
    {
        this.GPA = gpa;
    }
    public void setAge(int newAge)
    {
        this.age = newAge;
    }
}


