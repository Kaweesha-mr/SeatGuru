package com.example.seat_guru_oop;

public class User {

    private String NIC,FName,LName,Email,Password;


    public User(String NIC,String FName,String LName,String Email,String Password){
        this.NIC = NIC;
        this.FName = FName;
        this.LName = LName;
        this.Email = Email;
        this.Password = Password;

        System.out.println("Class executed");

    }
    public String getNIC(){
        return NIC;
    }

    public void setNIC(String NIC){
        this.NIC = NIC;
    }

    public String getFName(){
        return FName;
    }

    public void setFName(String FName){
        this.FName = FName;
    }

    public String getLName(){
        return LName;
    }

    public void setLName(String LName){
        this.LName = LName;
    }

    public String getEmail(){
        return Email;
    }

    public void setEmail(String Email){
        this.Email = Email;
    }

    public String getPassword(){
        return Password;
    }

    public void setPassword(String Password){
        this.Password = Password;
    }

}
