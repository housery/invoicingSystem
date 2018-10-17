<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/10
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp"%>
<div class="col-sm-8 contain-box bg-light">
    <form action="${pageContext.request.contextPath}/admin/getProductCount" method="post">
        <div class="row">
            <div class="col"><strong>查看库存</strong></div>
            <div class="col form-inline d-flex justify-content-end">
                <label for="productId" class="p-2">商品名称:</label>
                <select class="form-control p-2" id="productId" name="productId">
                </select>
                &nbsp;&nbsp;
                <button type="submit" class="btn btn-primary btn-sm p-2" id="submit">提交</button>
            </div>
        </div>
        <c:if test="${count != null}">
            <h2>该商品的数量为：${count}</h2>
        </c:if>
    </form>
</div>
<%@include file="common/footer.jsp"%>
<script src="${pageContext.request.contextPath}/statics/js/product.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/inventory.js"></script>
