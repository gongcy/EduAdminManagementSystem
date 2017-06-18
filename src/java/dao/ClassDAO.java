/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojo.Class;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.HibernateUtil;

/**
 *
 * @author Third
 */
public class ClassDAO {

    private Session session = null;

    public ClassDAO() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Class> getAllClass() {
        List<Class> result = null;
        Transaction transaction = null;
        Query query;
        try {
            if (!session.isOpen()) {
                session = HibernateUtil.getSessionFactory().openSession();
            } else {
                session = HibernateUtil.getSessionFactory().getCurrentSession();
            }
            transaction = session.beginTransaction();
            query = session.createQuery("FROM Class");
            result = query.list();
            transaction.commit();
        } catch (HibernateException e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
        return result;
    }
}
