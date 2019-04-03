using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Student
{
    private int StudentID;
    private string firstName;
    private string lastName;
    private string middleName;
    private string studentEmail;
    private string streetAddress;
    private string city;
    private string state;
    private string country;
    private int schoolID;
    private string zipCode;
    private DateTime DateOfBirth;
    private int Age;
    private string passwordOne;
    private string passwordTwo;
    private string LastUpdatedBy;
    private string LastUpdated;


    public static int numOfStudents;

    public Student(String firstName, String lastName, String middleName, String stuEmail, String streetAddress, String city, String state, String country, int schoolid, DateTime dob, int age, String zipCode, String passwordOne, String passwordTwo, String LastUpdatedBy, String LastUpdated)
    {
        setStudentID(numOfStudents);
        setFirstName(firstName);
        setLastName(lastName);
        setMiddleName(middleName);
        setStudentEmail(studentEmail);
        setStreetAddress(streetAddress);
        setCity(city);
        setState(state);
        setCountry(country);
        setSchoolId(schoolid);
        setZipCode(zipCode);
        setDateOfBirth(dob);
        setAge(age);
        setPasswordOne(passwordOne);
        setPasswordTwo(passwordTwo);
        setLastUpdatedBy(LastUpdatedBy);
        setLastUpdated(LastUpdated);
        numOfStudents++;
    }

    public int getEmployerID()
    {
        return (this.StudentID);
    }

    public string getFirstName()
    {
        return (this.firstName);
    }


    public string getLastName()
    {
        return (this.lastName);
    }

    public string getMiddleName()
    {
        return (this.middleName);
    }

    public string getStudentEmail()
    {
        return (this.studentEmail);
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
    public DateTime getDateOfBirth()
    {
        return (this.DateOfBirth);
    }
    public int getAge()
    {
        return (this.Age);
    }
    public string getPasswordOne()
    {
        return (this.passwordOne);
    }

    public string getPasswordTwo()
    {
        return (this.passwordTwo);
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

    public void setMiddleName(string newMiddleName)
    {
        this.middleName = newMiddleName;
    }

    public void setStudentEmail(string newStudentEmail)
    {
        this.studentEmail = newStudentEmail;
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
    public void setSchoolId(int newSchoolId)
    {
        this.schoolID = newSchoolId;
    }

    public void setZipCode(string newZipCode)
    {
        this.zipCode = newZipCode;
    }
    public void setDateOfBirth(DateTime newDateOfBirth)
    {
        this.DateOfBirth = newDateOfBirth;
    }
    public void setAge(int newAge)
    {
        this.Age = newAge;
    }






    public void setPasswordOne(string newPasswordOne)
    {
        this.passwordOne = newPasswordOne;
    }

    public void setPasswordTwo(string newPasswordTwo)
    {
        this.passwordTwo = newPasswordTwo;
    }

    public void setStudentID(int newNumOfStudents)
    {
        this.StudentID = newNumOfStudents;
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

