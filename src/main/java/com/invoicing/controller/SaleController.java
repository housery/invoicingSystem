package com.invoicing.controller;

import com.invoicing.pojo.Sale;
import com.invoicing.pojo.User;
import com.invoicing.service.product.ProductService;
import com.invoicing.service.sale.SaleService;
import com.invoicing.tools.Constants;
import com.invoicing.tools.PageSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class SaleController {
    @Resource
    private ProductService productService;
    @Resource
    private SaleService saleService;

    @RequestMapping("/add")
    public String addSale(){
        return "add";
    }

    @RequestMapping("/addSale")
    @ResponseBody
    public String addSale(@RequestParam(value = "productId") String productId, @RequestParam(value = "price") String price,
                          @RequestParam(value = "quantity") String quantity, HttpSession session){
        long _productId = Long.parseLong(productId);
        double _price = Double.parseDouble(price);
        long _quantity = Long.parseLong(quantity);
        long userId = ((User)session.getAttribute(Constants.USER_SESSION)).getId();

        Sale sale = new Sale();
        sale.setProductId(_productId);
        sale.setPrice(_price);
        sale.setQuantity(_quantity);
        sale.setTotalPrice(_quantity*_price);
        sale.setSaleDate(new Date());
        sale.setUserId(userId);

        int result = saleService.addSale(sale);
        if (result>0){
            return "<script>alert('添加成功！');location.href='/invoicingSystem/admin/main'</script>";
        } else {
            return "<script>alert('添加失败！')</script>";
        }
    }

    @RequestMapping("/getSaleList")
    public String getSaleList(@RequestParam(value="keyWord") String keyWord,
                              @RequestParam(value = "pageIndex", required = false) String pageIndex,
                              Model model){
        // 当前页码
        int currentPageNo = 1;
        if (pageIndex != null) {
            currentPageNo = Integer.valueOf(pageIndex);
        }

        // 总数量（表）
        int totalCount = saleService.getCount();
        // 总页数
        PageSupport pages = new PageSupport();
        pages.setCurrentPageNo(currentPageNo);// 当前页码
        pages.setTotalCount(totalCount); // 总数量
        int totalPageCount = pages.getTotalPageCount();// 总页数-totalCount/pageSize（+1）
        int pageSize=pages.getPageSize();
        // 控制首页和尾页
        if (currentPageNo < 1) {
            currentPageNo = 1;
        } else if (currentPageNo > totalPageCount) {
            currentPageNo = totalPageCount;
        }
        List<Sale> salelist = saleService.getSaleList(keyWord,(currentPageNo-1)*pageSize,pageSize);
        model.addAttribute("salelist", salelist);
        model.addAttribute("keyWord", keyWord);
        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);

        return "saleList";
    }
}
