package pojo;
// Generated Dec 22, 2016 2:09:21 PM by Hibernate Tools 4.3.1

/**
 * Classroom generated by hbm2java
 */
public class Classroom implements java.io.Serializable {

    private String classroomno;
    private String building;

    public Classroom() {
    }

    public Classroom(String classroomno, String building) {
        this.classroomno = classroomno;
        this.building = building;
    }

    public String getClassroomno() {
        return this.classroomno;
    }

    public void setClassroomno(String classroomno) {
        this.classroomno = classroomno;
    }

    public String getBuilding() {
        return this.building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

}
