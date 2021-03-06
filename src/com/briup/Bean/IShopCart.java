package com.briup.Bean;

import java.math.BigDecimal;
import java.util.Iterator;

public interface IShopCart {
	
	void addProduct(Product product) throws Exception;
	
	void removeProduct(Long productid) throws Exception;
	
	void removeAllProducts() throws Exception;
	
	void updateProduct(Long productid,Long number) throws Exception;
	
	BigDecimal getTotalPrice() throws Exception;
	
	Iterator<OrderLine> getOrderlines() throws Exception;
	
}
