using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Employer
{
    private int EmployerID;
    private string firstName;
    private string lastName;
    private string companyName;
    private string companyEmail;
    private string streetAddress;
    private string city;
    private string state;
    private string country;
    private string zipCode;
    private string tier;
    private string passwordOne;
    private string passwordTwo;
    private string question;
    private string answer;
    private string LastUpdatedBy;
    private string LastUpdated;

    public static int numOfEmployers;

    public Employer(String firstName, String lastName, String companyName, String companyEmail, String streetAddress, String city, String state, String country, String zipCode, String passwordOne, String passwordTwo, String question, String answer, String LastUpdatedBy, String LastUpdated)
    {
        setEmployerID(numOfEmployers);
        setFirstName(firstName);
        setLastName(lastName);
        setCompanyName(companyName);
        setCompanyEmail(companyEmail);
        setStreetAddress(streetAddress);
        setCity(city);
        setState(state);
        setCountry(country);
        setZipCode(zipCode);
        setPasswordOne(passwordOne);
        setPasswordTwo(passwordTwo);
        setLastUpdatedBy(LastUpdatedBy);
        setLastUpdated(LastUpdated);
        setQuestion(question);
        setAnswer(answer);
        numOfEmployers++;

    }

    public int getEmployerID()
    {
        return (this.EmployerID);
    }

    public string getFirstName()
    {
        return (this.firstName);
    }


    public string getLastName()
    {
        return (this.lastName);
    }

    public string getCompanyName()
    {
        return (this.companyName);
    }

    public string getCompanyEmail()
    {
        return (this.companyEmail);
    }

    public string getStreetAddress()
    {
        return (this.streetAddress);
    }

    public string getCity()
    {
        return (this.city);
    }

    public string getState()
    {
        return (this.state);
    }

    public string getCountry()
    {
        return (this.country);
    }

    public string getZipCode()
    {
        return (this.zipCode);
    }

    public string getPasswordOne()
    {
        return (this.passwordOne);
    }

    public string getPasswordTwo()
    {
        return (this.passwordTwo);
    }

    public string getQuestion()
    {
        return (this.question);
    }

    public string getAnswer()
    {
        return (this.answer);
    }

    public string getLastUpdatedBy()
    {
        return (this.LastUpdatedBy);
    }

    public string getLastUpdated()
    {
        return (DateTime.Today.ToShortDateString());
    }


    public void setFirstName(string newFirstName)
    {
        this.firstName = newFirstName;
    }

    public void setLastName(string newLastName)
    {
        this.lastName = newLastName;
    }

    public void setCompanyName(string newCompanyName)
    {
        this.companyName = newCompanyName;
    }

    public void setCompanyEmail(string newCompanyEmail)
    {
        this.companyEmail = newCompanyEmail;
    }

    public void setStreetAddress(string newStreet)
    {
        this.streetAddress = newStreet;
    }

    public void setCity(string newCity)
    {
        this.city = newCity;
    }

    public void setState(string newState)
    {
        this.state = newState;
    }

    public void setCountry(string newCountry)
    {
        this.country = newCountry;
    }

    public void setZipCode(string newZipCode)
    {
        this.zipCode = newZipCode;
    }

    public void setPasswordOne(string newPasswordOne)
    {
        this.passwordOne = newPasswordOne;
    }

    public void setPasswordTwo(string newPasswordTwo)
    {
        this.passwordTwo = newPasswordTwo;
    }

    public void setQuestion(string newquestion)
    {
        this.question = newquestion;
    }

    public void setAnswer(string newanswer)
    {
        this.answer = newanswer;
    }

    public void setEmployerID(int newNumOfEmployers)
    {
        this.EmployerID = newNumOfEmployers;
    }

    public void setLastUpdatedBy(string newLastUpdatedBy)
    {
        this.LastUpdatedBy = "Ruben Torrico";
    }


    public void setLastUpdated(string newLastUpdated)
    {
        this.LastUpdated = DateTime.Today.ToShortDateString();
    }

    public string getTier()
    {
        return this.tier;
    }

    public void setTier(String tier)
    {
        this.tier = tier;
    }

}