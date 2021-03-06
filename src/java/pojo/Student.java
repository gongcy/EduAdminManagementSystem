package pojo;
// Generated Dec 22, 2016 2:09:21 PM by Hibernate Tools 4.3.1

import java.util.Date;

/**
 * Student generated by hbm2java
 */
public class Student implements java.io.Serializable {

    private String stuno;
    private String stupassword;
    private String stuname;
    private String stugender;
    private String stuidno;
    private String stuaddress;
    private String classname;
    private Date studob;

    public Student() {
    }

    public Student(String stuno, String stupassword, String stuname, String stugender, String stuidno, String stuaddress) {
        this.stuno = stuno;
        this.stupassword = stupassword;
        this.stuname = stuname;
        this.stugender = stugender;
        this.stuidno = stuidno;
        this.stuaddress = stuaddress;
    }

    public Student(String stuno, String stupassword, String stuname, String stugender, String stuidno, String stuaddress, String classname, Date studob) {
        this.stuno = stuno;
        this.stupassword = stupassword;
        this.stuname = stuname;
        this.stugender = stugender;
        this.stuidno = stuidno;
        this.stuaddress = stuaddress;
        this.classname = classname;
        this.studob = studob;
    }

    public String getStuno() {
        return this.stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getStupassword() {
        return this.stupassword;
    }

    public void setStupassword(String stupassword) {
        this.stupassword = stupassword;
    }

    public String getStuname() {
        return this.stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStugender() {
        return this.stugender;
    }

    public void setStugender(String stugender) {
        this.stugender = stugender;
    }

    public String getStuidno() {
        return this.stuidno;
    }

    public void setStuidno(String stuidno) {
        this.stuidno = stuidno;
    }

    public String getStuaddress() {
        return this.stuaddress;
    }

    public void setStuaddress(String stuaddress) {
        this.stuaddress = stuaddress;
    }

    public String getClassname() {
        return this.classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public Date getStudob() {
        return this.studob;
    }

    public void setStudob(Date studob) {
        this.studob = studob;
    }

}
