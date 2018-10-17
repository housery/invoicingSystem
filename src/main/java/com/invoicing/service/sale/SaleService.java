package com.invoicing.service.sale;

import com.invoicing.dao.sale.SaleMapper;
import com.invoicing.pojo.Sale;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SaleService {
    @Resource
    private SaleMapper saleMapper;

    public int addSale(Sale sale){
        return saleMapper.addSale(sale);
    }

    public List<Sale> getSaleList(String keyword,Integer pageFirst, Integer pageSize){
        return saleMapper.getSalesList(keyword, pageFirst, pageSize);
    }
    public int getCount(){
        return saleMapper.getCount();
    }
}
