$(function () {
    var productId = $("#productId");
    $("#submit").on("click",function () {
        if (productId.val() === '0'){
            layer.tips("请选择商品名称!",productId)
            return false;
        }
    })
})