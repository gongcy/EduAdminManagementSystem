/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Administrator
 */
public class StudentHelper {

    Session session = null;

    public StudentHelper() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Student> searchStudents(String key, String value) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Student where " + key + "='" + value + "'");
        List<Student> tList = (List<Student>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Student> getStudentById(String id) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Student where studentno='" + id + "'");
        List<Student> tList = (List<Student>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Student> displayAllStudents() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Student");
        List<Student> tList = (List<Student>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public boolean insertStudent(Student t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = true;
        Transaction tx = session.beginTransaction();
        String tid = t.getStuno();
        Query q = session.createQuery("from Student");
        List<Student> tList = (List<Student>) q.list();
        for (Iterator it = tList.iterator(); it.hasNext();) {
            Student stu = (Student) it.next();
            if (stu.getStuno().equals(tid)) {
                flag = false;
            }
        }

        if (flag == true) {
            session.save(t);
            tx.commit();
        }
//        session.close();
        return flag;
    }

    public boolean updateStudent(Student t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = false;
        Transaction tx = session.beginTransaction();
        if (flag == true) {
            session.update(t);
            tx.commit();
        }
//        session.close();
        return flag;
    }

    public boolean deleteStudent(Student t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = false;
        Transaction tx = session.beginTransaction();
        if (flag == true) {
            session.delete(t);
            tx.commit();
        }
//        session.close();
        return flag;
    }
}
