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
public class ClassroomHelper {

    Session session = null;

    public ClassroomHelper() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Classroom> searchClassrooms(String key, String value) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Classroom where " + key + "='" + value + "'");
        List<Classroom> tList = (List<Classroom>) q.list();
        tx.commit();
        return tList;
    }

    public List<Classroom> getClassroomById(String id) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Classroom where ClassRoomNo='" + id + "'");
        List<Classroom> tList = (List<Classroom>) q.list();
        tx.commit();
        return tList;
    }

    public List<Classroom> displayAllClassrooms() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Classroom");
        List<Classroom> tList = (List<Classroom>) q.list();
        tx.commit();
        return tList;
    }

    public boolean insertClassroom(Classroom t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        boolean flag = true;
        Transaction tx = session.beginTransaction();
        String tid = t.getClassroomno();
        Query q = session.createQuery("from Classroom");
        List<Classroom> tList = (List<Classroom>) q.list();
        for (Iterator it = tList.iterator(); it.hasNext();) {
            Classroom stu = (Classroom) it.next();
            if (stu.getClassroomno().equals(tid)) {
                flag = false;
            }
        }

        if (flag == true) {
            session.save(t);
            tx.commit();
        }
        return flag;
    }

    public boolean updateClassroom(Classroom t) {
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
        return flag;
    }

    public boolean deleteClassroom(Classroom t) {
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
        return flag;
    }
}
