package mrmwq;

import java.util.List;

import mrmwq.hibernate.Sort;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    public HibernateUtil() {
    }

    private static SessionFactory sessionFactory;

    // ����Hibernate�����ļ�
    static {
        try {
            Configuration config = new Configuration().configure();
            sessionFactory = config.buildSessionFactory();
        } catch (Exception e) {
            System.out.println("------�ڼ���Hibernate�����ļ�ʱ�׳��쳣���������£�");
            e.printStackTrace();
        }
    }
    public List query(String hql) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        List l = null;
        try {
            Query q = session.createQuery(hql);
            l = q.list();
            tx.commit();
        } catch (Exception e) {
            tx.rollback();
            System.out.println("------��ʱ�׳��쳣���������£�");
            e.printStackTrace();
        } finally {
            session.close();
        }
        return l;
    }

}
