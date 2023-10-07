package com.example.seat_guru_oop;

public class Bus {

    private int BusID;
    private String Name;
    private String Color;
    private int NoSeat;
    private String Bus_Reg_No;
    private String Dep;
    private String Arr;


    public Bus(int BusID, String Name, String Color, int NoSeat, String Bus_Reg_No, String Dep, String Arr) {
        this.BusID = BusID;
        this.Name = Name;
        this.Color = Color;
        this.NoSeat = NoSeat;
        this.Bus_Reg_No = Bus_Reg_No;
        this.Dep = Dep;
        this.Arr = Arr;
    }

    public int getBusID() {
        return BusID;
    }

    public void setBusID(int BusID) {
        this.BusID = BusID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public int getNoSeat() {
        return NoSeat;
    }





}
