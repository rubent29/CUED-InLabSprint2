using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CommonApp
/// </summary>
public class CommonApp
{
    private int commonAppID;
    private string school;
    private string date;
    private double GPA;
    private string experience;
    private string skills;
    private string email;
    private string LastUpdatedBy;
    private string LastUpdated;

    public static int numOfApps;

    public CommonApp(String school, String date, Double GPA, String experience, String skills, String email, String LastUpdatedBy, String LastUpdated)
    {
        setCommonAppID(numOfApps);
        setSchool(school);
        setDate(date);
        setGPA(GPA);
        setExperience(experience);
        setSkills(skills);
        setEmail(email);
        numOfApps++;
    }

    public int getCommonAppID()
    {
        return (this.commonAppID);
    }

    public string getSchool()
    {
        return (this.school);
    }

    public string getDate()
    {
        return (this.date);
    }

    public double getGPA()
    {
        return (this.GPA);
    }

    public string getExperience()
    {
        return (this.experience);
    }

    public string getSkills()
    {
        return (this.skills);
    }

    public string getEmail()
    {
        return (this.email);
    }

    public string getLastUpdatedBy()
    {
        return ("Ruben");
    }

    public string getLastUpdated()
    {
        return (DateTime.Today.ToShortDateString());

    }

    public void setCommonAppID(int newCommonAppID)
    {
        this.commonAppID = newCommonAppID;
    }

    public void setSchool(string newSchool)
    {
        this.school = newSchool;
    }

    public void setDate(string newDate)
    {
        this.date = newDate;
    }

    public void setGPA(double newGPA)
    {
        this.GPA = newGPA;
    }

    public void setExperience(string newExperience)
    {
        this.experience = newExperience;
    }

    public void setSkills(string newSkills)
    {
        this.skills = newSkills;
    }

    public void setEmail(string newEmail)
    {
        this.email = newEmail;
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