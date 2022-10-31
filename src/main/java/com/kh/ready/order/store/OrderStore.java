package com.kh.ready.order.store;

import java.util.List;

import com.kh.ready.cart.domain.Cart;
import com.kh.ready.order.domain.Order;
import com.kh.ready.user.domain.User;

public interface OrderStore {

	List<Cart> getCartdataByUserId(String userId);

	User getUserInfoByUserId(String userId);

	int insertOrder(Order order);

}
