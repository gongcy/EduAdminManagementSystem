/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managedBean;

import encode.MD5;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import pojo.TeacherHelper;
import pojo.Teacher;

/**
 *
 * @author Administrator
 */
public class AdminRegBean {

    private String tid;
    private String tpwd, tpwd2;
    private String tname;
    private String tdepart;
    private String vcode;
    TeacherHelper dhelper;

    public String getVcode() {
        return vcode;
    }

    public void setVcode(String vcode) {
        this.vcode = vcode;
    }

    public String getTpwd2() {
        return tpwd2;
    }

    public void setTpwd2(String tpwd2) {
        this.tpwd2 = tpwd2;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTpwd() {
        return tpwd;
    }

    public void setTpwd(String tpwd) {
        this.tpwd = tpwd;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTdepart() {
        return tdepart;
    }

    public void setTdepart(String tdepart) {
        this.tdepart = tdepart;
    }

    /**
     * Creates a new instance of AdminRegBean
     */
    public AdminRegBean() {
        dhelper = new TeacherHelper();
    }

    public String adminReg() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
//        if (!vcode.equals((session.getAttribute("rand")))) {
//            return "failure";
//        }
        MD5 md5 = new MD5();
        if (tpwd.equals(tpwd2)) {
            Teacher t = new Teacher();
            t.setTeacherid(tid);
            t.setTeachername(tname);
            t.setTeacherpassword(md5.getMD5ofStr(tpwd));
            t.setDepartment(tdepart);
            boolean flag = dhelper.insertTeacher(t);
            if (flag) {
                return "success";
            }
        }
        return "failure";
    }

}
