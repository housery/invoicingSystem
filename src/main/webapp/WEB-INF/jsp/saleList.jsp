<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/header.jsp"%>
<div class="col-sm-8 contain-box bg-light">
    <form action="${pageContext.request.contextPath}/admin/getSaleList" method="post">
        <input type="hidden" name="pageIndex" value="1">
        <div class="row">
            <div class="col"><strong>销售信息查询</strong></div>
            <div class="col form-inline d-flex justify-content-end">
                <label for="sort" class="p-2">商品名称:</label>
                <select class="form-control p-2" id="sort" name="keyWord">
                    <option value="0">销售日期</option>
                    <option value="1">单笔总价</option>
                </select>
                &nbsp;&nbsp;
                <button type="submit" class="btn btn-primary btn-sm p-2" id="submit-sort">提交</button>
            </div>
        </div>
        <table class="table table-bordered table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>商品</th>
                <th>单价</th>
                <th>数量</th>
                <th>总价</th>
                <th>销售日期</th>
                <th>销售员</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="sale" items="${salelist}" varStatus="status">
                <tr>
                    <td>${sale.id}</td>
                    <td>${sale.productName}</td>
                    <td>${sale.price}</td>
                    <td>${sale.quantity}</td>
                    <td>${sale.totalPrice}</td>
                    <td><fmt:formatDate value="${sale.saleDate}" pattern="yyyy-MM-dd"/></td>
                    <td>${sale.realName}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${totalCount}"/>
            <c:param name="currentPageNo" value="${currentPageNo}"/>
            <c:param name="totalPageCount" value="${totalPageCount}"/>
            <c:param name="url"
                     value="${pageContext.request.contextPath}/admin/getSaleList?keyWord=${keyWord }&pageIndex"/>
        </c:import>
    </form>
</div>
<%@include file="common/footer.jsp"%>