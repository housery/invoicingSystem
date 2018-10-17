<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp" %>
<div class="col-sm-8 contain-box bg-light">
    <div class="container">
        <div class="col-sm-5">
            <h3>添加销售</h3>
            <form action="${pageContext.request.contextPath}/admin/addSale">
                <div class="form-group">
                    <label for="productId">商品名称:</label>
                    <select class="form-control" id="productId" name="productId">
                    </select>
                </div>
                <div class="form-group">
                    <label for="price">销售单价:</label>
                    <input type="text" class="form-control" id="price" name="price" placeholder="输入价格">
                </div>
                <div class="form-group">
                    <label for="quantity">销售数量:</label>
                    <input type="text" class="form-control" id="quantity" name="quantity" placeholder="输入销售数量">
                </div>
                <button type="submit" class="btn btn-primary" id="submit-product">提交</button>
            </form>
        </div>
    </div>
</div>
</div>
</div>
</body>
<%@include file="common/footer.jsp" %>
<script src="${pageContext.request.contextPath}/statics/js/product.js"></script>
</html>
