/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import pojo.Classroom;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.HibernateUtil;

/**
 *
 * @author Third
 */
public class ClassroomDAO {

    private Session session = null;

    public ClassroomDAO() {
        session = HibernateUtil.getSessionFactory().openSession();
    }

    public List<Classroom> getAllClassroom() {
        List<Classroom> result = null;
        Transaction transaction = null;
        Query query;
        try {
            if (!session.isOpen()) {
                session = HibernateUtil.getSessionFactory().openSession();
            } else {
                session = HibernateUtil.getSessionFactory().getCurrentSession();
            }
            transaction = session.beginTransaction();
            query = session.createQuery("FROM Classroom");
            result = (List<Classroom>) query.list();
            transaction.commit();
        } catch (HibernateException e) {
            transaction.rollback();
        }
        return result;
    }
}
