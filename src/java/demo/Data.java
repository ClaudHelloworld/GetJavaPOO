/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

/**
 *
 * @author Fatec
 * 
 * classe didatica utilizada para manipular datas no poo
 */
public class Data {
    /**
     * atributo para armazenar o dia de uma data
     */
    private int day;
    private int mounth;
    private int year;
    
    public Data() {
        day = 1; mounth = 1; year = 2000;
    }
    
    public Data(int day, int mounth, int year) {
        this.day = day; this.mounth = mounth; this.year = year;
    }
    
    public void setData(int day, int mounth, int year) {
        this.day = day; this.mounth = mounth; this.year = year;
    }
    
    public String getData() {
        return day + "/" + mounth + "/" + year;
    }
    
    public String getAniversario() {
        return day + "/" + mounth;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getMounth() {
        return mounth;
    }

    public void setMounth(int mounth) {
        this.mounth = mounth;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
