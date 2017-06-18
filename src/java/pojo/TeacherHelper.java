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
public class TeacherHelper {

    Session session = null;

    public TeacherHelper() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Teacher> searchTeachers(String key, String value) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Teacher where " + key + "='" + value + "'");
        List<Teacher> tList = (List<Teacher>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Teacher> getTeacherById(String id) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Teacher where teacherid='" + id + "'");
        List<Teacher> tList = (List<Teacher>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Teacher> getTeachersByName(String name) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Teacher where teachername='" + name + "'");
        List<Teacher> tList = (List<Teacher>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Teacher> getTeachersByDept(String dept) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Teacher where Department='" + dept + "'");
        List<Teacher> tList = (List<Teacher>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public List<Teacher> displayAllTeachers() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Teacher");
        List<Teacher> tList = (List<Teacher>) q.list();
        tx.commit();
//        session.close();
        return tList;
    }

    public boolean insertTeacher(Teacher t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = true;
        Transaction tx = session.beginTransaction();
        String tid = t.getTeacherid();
        Query q = session.createQuery("from Teacher");
        List<Teacher> tList = (List<Teacher>) q.list();
        for (Iterator it = tList.iterator(); it.hasNext();) {
            Teacher teacher = (Teacher) it.next();
            if (teacher.getTeacherid().equals(tid)) {
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

    public boolean updateTeacher(Teacher t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = true;
        try {
            Transaction tx = session.beginTransaction();
            session.update(t);
            tx.commit();
        } catch (Exception e) {
            flag = false;
        }
//        session.close();
        return flag;
    }

    public boolean deleteTeacher(Teacher t) {
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
