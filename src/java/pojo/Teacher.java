package pojo;
// Generated Dec 22, 2016 2:09:21 PM by Hibernate Tools 4.3.1



/**
 * Teacher generated by hbm2java
 */
public class Teacher  implements java.io.Serializable {


     private String teacherid;
     private String teacherpassword;
     private String teachername;
     private String department;
     private String major;

    public Teacher() {
    }

	
    public Teacher(String teacherid) {
        this.teacherid = teacherid;
    }
    public Teacher(String teacherid, String teacherpassword, String teachername, String department, String major) {
       this.teacherid = teacherid;
       this.teacherpassword = teacherpassword;
       this.teachername = teachername;
       this.department = department;
       this.major = major;
    }
   
    public String getTeacherid() {
        return this.teacherid;
    }
    
    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }
    public String getTeacherpassword() {
        return this.teacherpassword;
    }
    
    public void setTeacherpassword(String teacherpassword) {
        this.teacherpassword = teacherpassword;
    }
    public String getTeachername() {
        return this.teachername;
    }
    
    public void setTeachername(String teachername) {
        this.teachername = teachername;
    }
    public String getDepartment() {
        return this.department;
    }
    
    public void setDepartment(String department) {
        this.department = department;
    }
    public String getMajor() {
        return this.major;
    }
    
    public void setMajor(String major) {
        this.major = major;
    }




}


