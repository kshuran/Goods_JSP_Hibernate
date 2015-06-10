package control;

import entity.Goods;
import java.math.BigDecimal;
import java.util.List;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author НКулацкий
 */
public class GoodsManager {

    public void createAndStoreGoods(Short goodId, String name, BigDecimal price) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        Goods goods = new Goods();
        goods.setGoodId(goodId);
        goods.setName(name);
        goods.setPrice(price);
        
        session.save(goods);

        session.getTransaction().commit();
    }

    public List listGoods() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List result = session.createQuery("from Goods").list();
        session.getTransaction().commit();
        return result;
    }
    
}