package com.kh.ready.order.store.logic;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.ready.cart.domain.Cart;
import com.kh.ready.order.domain.Order;
import com.kh.ready.order.store.OrderStore;
import com.kh.ready.user.domain.User;

@Repository
public class OrderStoreLogic implements OrderStore{

	@Autowired
	private SqlSession session;

	@Override
	public List<Cart> getCartdataByUserId(String userId) {

		return session.selectList("OrderMapper.selectCartListByUserId", userId);
	}

	@Override
	public User getUserInfoByUserId(String userId) {

		return session.selectOne("UserMapper.selectOneUser",userId);
	}

	@Override
	public List<Cart> getNeedDataByUserId(String userId) {
		
		return session.selectList("OrderMapper.selectNeedData",userId);
	}

	@Override
	public int insertOrder(Order order) {
		
		return session.insert("OrderMapper.insertOrder",order);
	}
	
}
