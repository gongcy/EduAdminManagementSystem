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
public class ClassHelper {

    Session session = null;

    public ClassHelper() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Class> searchClasses(String key, String value) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        else
            session= HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Class where " + key + "='" + value + "'");
        List<Class> tList = (List<Class>) q.list();
        tx.commit();
        return tList;
    }

    public List<Class> getClassById(String id) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        else
            session= HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Class where ClassName='" + id + "'");
        List<Class> tList = (List<Class>) q.list();
        tx.commit();
        return tList;
    }

    public List<Class> displayAllClasses() {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        else
            session= HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Class");
        List<Class> tList = (List<Class>) q.list();
        tx.commit();
        return tList;
    }

    public boolean insertClass(Class t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        else
            session= HibernateUtil.getSessionFactory().getCurrentSession();
        boolean flag = true;
        Transaction tx = session.beginTransaction();
        String tid = t.getClassname();
        Query q = session.createQuery("from Class");
        List<Class> tList = (List<Class>) q.list();
        for (Iterator it = tList.iterator(); it.hasNext();) {
            Class stu = (Class) it.next();
            if (stu.getClassname().equals(tid)) {
                flag = false;
            }
        }

        if (flag == true) {
            session.save(t);
            tx.commit();
        }
        return flag;
    }

    public boolean updateClass(Class t) {
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

    public boolean deleteClass(Class t) {
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        }
        else
            session= HibernateUtil.getSessionFactory().getCurrentSession();
        boolean flag = false;
        Transaction tx = session.beginTransaction();
        if (flag == true) {
            session.delete(t);
            tx.commit();
        }
        return flag;
    }
}
