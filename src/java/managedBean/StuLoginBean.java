/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managedBean;

import dao.StuDAO;
import pojo.Student;
import java.io.IOException;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Third
 */
public class StuLoginBean {

    private String stuno;
    private String stupassword;
    private String vcode;

    public String getVcode() {
        return vcode;
    }

    public void setVcode(String vcode) {
        this.vcode = vcode;
    }

    public StuLoginBean() {
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

    public void login() throws IOException {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
        if (!vcode.equals((session.getAttribute("rand")))) {
            return;
        }
        Student correspondStudent = new StuDAO().getStudentById(this.stuno);
        HttpServletResponse response = (HttpServletResponse) context.getExternalContext().getResponse();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        if (stupassword.equals(correspondStudent.getStupassword())) {
            session.setAttribute("stuno", stuno);
            response.sendRedirect(request.getContextPath() + "/student/index.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/Stu_login.xhtml");
        }
    }
}
