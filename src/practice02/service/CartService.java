package practice02.service;

import java.util.List;

import practice02.bean.Cart;
import practice02.bean.Fruit;
import practice02.dao.CartDao;

public class CartService {
	private CartDao cDao;
	
	public CartService() {
		this.cDao = new CartDao();
	}

	public void addCart(String cId, Fruit fruit) {
		
		
		cDao.add(cId, fruit);
		
	}

	public List<Cart> getCart(String cId) {
		return cDao.getCart(cId);
		
	}
	
	
	
}
