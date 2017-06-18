/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import pojo.Student;
import pojo.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Third
 */
public class StuDAO {

    private Session session = null;

    public StuDAO() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public Student getStudentById(String id) {

        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction transaction = session.beginTransaction();
        Student student = (Student) session.get(Student.class, id);
        transaction.commit();

        return student;
    }

    public void registerNewStudent(Student student) {

        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }

        Transaction transaction = session.beginTransaction();
        session.save(student);
        transaction.commit();
    }

    public void changepwd(String stuid, String newpwd) {
        Student student = getStudentById(stuid);

        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction transaction = session.beginTransaction();
        student.setStupassword(newpwd);
        session.update(student);
        transaction.commit();
    }

}
