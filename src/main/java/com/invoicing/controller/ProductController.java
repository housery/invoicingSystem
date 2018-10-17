package com.invoicing.controller;

import com.alibaba.fastjson.JSONArray;
import com.invoicing.pojo.Product;
import com.invoicing.service.product.ProductService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class ProductController {
    @Resource
    private ProductService productService;
    private Logger logger = Logger.getLogger(ProductController.class);

    @RequestMapping("/getProductName")
    @ResponseBody
    public Object getProductName(){
        List<Product> productList = productService.getProductList();
        return JSONArray.toJSONString(productList);
    }

    @RequestMapping("/inventory")
    public String toInventory(){
        return "inventory";
    }

    @RequestMapping("/getProductCount")
    public String getProductCount(@RequestParam String productId, Model model){
        Integer id = Integer.parseInt(productId);
        int count = productService.getProductCount(id);
        model.addAttribute("count",count);
        return "inventory";
    }
}
