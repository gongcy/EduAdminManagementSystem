/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managedBean;

import encode.MD5;
import java.util.List;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pojo.TeacherHelper;
import pojo.Teacher;

/**
 *
 * @author Administrator
 */
public class AdminLoginBean {

    private String tid;
    private String tpwd;
    private String vcode;

    TeacherHelper dhelper;

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

    public String getVcode() {
        return vcode;
    }

    public void setVcode(String vcode) {
        this.vcode = vcode;
    }

    /**
     * Creates a new instance of AdminLoginBean
     */
    public AdminLoginBean() {
        dhelper = new TeacherHelper();
    }

    public void adminCheckLogin() {
        MD5 md5 = new MD5();
        FacesContext context = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession) context.getExternalContext().getSession(true);
        if (!vcode.equals((session.getAttribute("rand")))){
            return ;
        }
        if (tid != null && tid.length() != 0) {
            try {
                List<Teacher> teacher = dhelper.getTeacherById(tid);
                if (!teacher.isEmpty()) {
                    Teacher t = teacher.get(0);
                    if (md5.getMD5ofStr(tpwd).equals(t.getTeacherpassword())) {
                        try {
                            HttpServletResponse response = ((HttpServletResponse) context.getExternalContext().getResponse());
                            HttpServletRequest request = ((HttpServletRequest) context.getExternalContext().getRequest());
                            session.setAttribute("id", tid);
                            response.sendRedirect(request.getContextPath() + "/admin/index.jsp");
                            context.responseComplete();
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    }
                } else {
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }

}
