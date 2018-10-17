$(document).ready(function () {
    var userName = $("#userName");
    var password = $("#password");
    var logout = $("#logout");

    userName.on("blur",function () {
        if (userName.val() === '' || userName.val() == null){
            layer.tips('用户名不能为空',userName);
        }
    })

    password.on("blur",function () {
        if (password.val() === '' || password.val() == null){
            layer.tips('密码不能为空',password);
        }
    })
    logout.on("click",function () {
        if (confirm("确定退出")==true){
            window.location.href='../logout';
        }
    })
})
