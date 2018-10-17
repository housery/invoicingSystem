package com.invoicing.dao.sale;

import com.invoicing.pojo.Sale;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SaleMapper {
    public int addSale(Sale sale);

    public List<Sale> getSalesList(@Param(value="keyWord") String keyWord,
                                   @Param("PageFirst")Integer PageFirst,
                                   @Param("PageSize")Integer PageSize);
    public int getCount();
}
