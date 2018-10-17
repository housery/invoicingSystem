package com.invoicing.dao.product;

import com.invoicing.pojo.Product;

import java.util.List;

public interface ProductMapper {
    public List<Product> getProductList();
    public int getProductCount(Integer productId);
}
