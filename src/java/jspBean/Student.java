/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jspBean;

import java.util.Date;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NIIT
 */
public class Student {

    private String stuno;
    private String stupassword;
    private String stuname;
    private String stugender;
    private String stuidno;
    private String stuaddress;
    private String classname;
    private Date studob;
    private HttpSession session;

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getStupassword() {
        return stupassword;
    }

    public void setStupassword(String stupassword) {
        encode.MD5 md5 = new encode.MD5();
        this.stupassword = md5.getMD5ofStr(stupassword);
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getStugender() {
        return stugender;
    }

    public void setStugender(String stugender) {
        this.stugender = stugender;
    }

    public String getStuidno() {
        return stuidno;
    }

    public void setStuidno(String stuidno) {
        this.stuidno = stuidno;
    }

    public String getStuaddress() {
        return stuaddress;
    }

    public void setStuaddress(String stuaddress) {
        this.stuaddress = stuaddress;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public Date getStudob() {
        return studob;
    }

    public void setStudob(Date studob) {
        this.studob = studob;
    }

    public HttpSession getSession() {
        return session;
    }

    public void setSession(HttpSession session) {
        this.session = session;
    }

    public Student() {

    }

    public void init() {
        setStuno((String) session.getAttribute("stuno"));
        pojo.Student pojoStudent = new dao.StuDAO().getStudentById(stuno);
        setStupassword(pojoStudent.getStupassword());
        setStugender(pojoStudent.getStugender());
        setClassname(pojoStudent.getClassname());
        setStuaddress(pojoStudent.getStuaddress());
        setStudob(pojoStudent.getStudob());
        setStuname(pojoStudent.getStuname());
        setStuidno(pojoStudent.getStuidno());
    }

    public void changepwd() {

        new dao.StuDAO().changepwd(stuno, this.stupassword);
    }
}
