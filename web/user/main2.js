//加载页面执行函数
$(function (){
    //查询tb_user表中的数据
    selectAllUsers();
})
//定义查询函数
function selectAllUsers(){
    //想后台请求 返回数据
    $.ajax({
        type:"post",
        url:"/user2?op=selectall",//?op标志变量  op=selectall时调用查询方法
        datatype:"json",//数据类型json类型
        data:{},
        success:function (data) {
            //从数据库中读取数据，数据返回成功，把数据显示在页面
            var num = data.length;
            for(var i=0;i<num;i++){
                var n = i+1;
                //#userlist获取表格  .append附加td元素  n对应序号
                $("#userlist tbody").append("<tr>\n" +
                    "      <td align='center'>" + n + "</td>\n" +
                    "      <td align='center'>" + data[i].userName+ "</td>\n" +
                    "      <td align='center'>" + data[i].password + "</td>\n" +

                    "      <td align='center'><a href='#'>修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a  href='#'>删除</a></td>\n" +
                    "  </tr>");
            }

        },
        error:function (data) {
            //如果返回错误，加载到出错页面
            alert("error");
        }
    })
}