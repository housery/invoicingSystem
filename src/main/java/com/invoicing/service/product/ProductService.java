package com.invoicing.service.product;

import com.invoicing.dao.product.ProductMapper;
import com.invoicing.pojo.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductService {
    @Resource
    private ProductMapper productMapper;

    public List<Product> getProductList(){
        return productMapper.getProductList();
    }

    public int getProductCount(Integer productId){
        return productMapper.getProductCount(productId);
    }
}
