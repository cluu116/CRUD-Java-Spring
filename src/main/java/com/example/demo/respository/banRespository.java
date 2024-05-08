package com.example.demo.respository;

import com.example.demo.entity.Ban;
import com.example.demo.service.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class banRespository {
    public List<Ban> getAll() {
        Session session = HibernateUtil.getSession();
        Query<Ban> query = session.createQuery("select p from Ban p", Ban.class);
        return query.getResultList();
    }

    public Ban getOne(Integer id) {
        Session session = HibernateUtil.getSession();
        Query<Ban> query = session.createQuery("select p from Ban p where p.id = :id", Ban.class);
        query.setParameter("id", id);
        return query.getSingleResult();
    }

    public void add(Ban ban) {
        Session session = HibernateUtil.getSession();
        Transaction transaction = session.beginTransaction();
        session.save(ban);
        transaction.commit();
    }

    public void update(Ban ban) {
        Session session = HibernateUtil.getSession();
        Transaction transaction = session.beginTransaction();
        session.update(ban);
        transaction.commit();
    }

    public void delete(Ban b) {
        Session session = HibernateUtil.getSession();
        Transaction transaction = session.beginTransaction();
        session.delete(b);
        transaction.commit();
    }
}
