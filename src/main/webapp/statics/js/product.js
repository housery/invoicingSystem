$(function () {
    var path = $("#path").val()
    $.ajax({
        type:"GET",
        url:path+"/admin/getProductName",
        data:{},
        dataType:"json",
        success:function(data){
            $("select").html("");//通过标签选择器，得到select标签，适用于页面里只有一个select
            var options = "<option value=\"0\">请选择</option>";
            for(var i = 0; i < data.length; i++){
                //alert(data[i].id);
                //alert(data[i].productName);
                options += "<option value=\""+data[i].id+"\">"+data[i].productName+"</option>";
            }
            $("select").html(options);
        },
        error:function(data){
            layer.msg("请求发生错误！");
        }
    })

    $("#submit-product").on("click",function () {
        var productid=$("#productId");
        var price=$("#price");
        var quantity=$("#quantity");
        if(productid.val()==="0"){
            layer.tips("请选择商品名称!",productid)
            return false;
        }
        if(price.val()==""){
            layer.tips("请填写商品单价!",price);
            return false;
        }
        if(isNaN(price.val())){
            layer.tips("商品价格只能是数字!",price);
            return false;
        }
        if(quantity.val()==""){
            layer.tips("请填写商品为数量!",quantity);
            return false;
        }
        if(isNaN(quantity.val())){
            layer.tips("商品数量只能是数字!",quantity);
            return false;
        }
        return true;
    })
})