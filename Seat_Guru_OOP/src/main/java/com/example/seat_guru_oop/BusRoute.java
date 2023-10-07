package com.example.seat_guru_oop;

public class BusRoute {
    private int id;
    private String from;
    private String to;
    private String startDate;
    private String endDate;

    // Constructors
    public BusRoute() {
    }

    public BusRoute(int id, String from, String to, String startDate, String endDate) {
        this.id = id;
        this.from = from;
        this.to = to;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getter and Setter methods
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    @Override
    public String toString() {
//        return id as a string
        return String.valueOf(id);
    }
}
