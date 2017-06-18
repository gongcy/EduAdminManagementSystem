/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managedBean;

import pojo.Class;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pojo.Student;

/**
 *
 * @author Third
 */
public class StuRegBean {

    private String stuno;
    private String stupassword;
    private String stuname;
    private String stugender;
    private String stuidno;
    private String stuaddress;
    private String classname;
    private String vcode;
    private Date studob;
    private List<Class> allclasses;

    /**
     * Creates a new instance of RegisterBean
     */
    public StuRegBean() {
        allclasses = new dao.ClassDAO().getAllClass();
    }

    public String getVcode() {
        return vcode;
    }

    public void setVcode(String vcode) {
        this.vcode = vcode;
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
        encode.MD5 md5 = new encode.MD5();
        this.stupassword = md5.getMD5ofStr(stupassword);
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

    public List<Class> getAllclasses() {
        return allclasses;
    }

    public String register() throws IOException {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
//        if (!vcode.equals((session.getAttribute("rand")))) {
//            return;
//        }
        Student student = new Student(stuno, stupassword, stuname, stugender, stuidno, stuaddress, classname, studob);
        new dao.StuDAO().registerNewStudent(student);
        return "success";
    }
}
