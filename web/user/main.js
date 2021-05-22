//页面加载时默认执行getAllUsers（）方法
var saveOrModify;
var key = '';
$(function () {
    getAllUser();
});

//定义查询方法
function getAllUser() {
    // alert(ctx)
    //向数据库请求数据，数据库返回数据
    $.ajax({
        type: "post",
        url: ctx + "/user?op=selectAll",
        dataType: "json",
        data: {},
        success: function (data) {
            $("#userlist tbody").empty();
            //数据返回成功，把数据显示在页面
            var num = data.length;
            for (var i = 0; i < num; i++) {
                var n = i + 1;
                $("#userlist tbody").append("<tr>\n" +
                    "      <td align='center'>" + n + "</td>\n" +
                    "      <td align='center'>" + data[i].name + "</td>\n" +
                    "      <td align='center'>" + data[i].pass + "</td>\n" +

                    "      <td align='center'><a href='#'>修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a  href=‘#' onclick='deleteUser(" + data[i].id + ")'>删除</a></td>\n" +
                    "  </tr>");
            }

        },
        error: function (data) {
            //如果返回错误，加载到出错页面
            alert("error");
        }

    });
}

//定义根据用户名查询的方法

function selectbyname() {
    //alert("name");
    var name = $("#sname").val();
    $.ajax({
        type: "post",
        url: "/user?op=selectbyname",
        dataType: "json",
        data: {"name": name},
        //name=wtttt
        success: function (data) {
            $("#userlist tbody").empty();
            var num = data.length;
            for (var i = 0; i < num; i++) {
                var n = i + 1;
                $("#userlist tbody").append("<tr>\n" +
                    "      <td align='center'>" + n + "</td>\n" +
                    "      <td align='center'>" + data[i].name + "</td>\n" +
                    "      <td align='center'>" + data[i].pass + "</td>\n" +

                    "      <td align='center'><a href='#' onclick='updata(" + data[i].id + ")' >修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a  href='#' onclick='deleteUser(" + data[i].id + ")'>删除</a></td>\n" +
                    // "      <td align='center'><span data-toggle='modal' data-target='#myModal'>修改</span>&nbsp;&nbsp;|&nbsp;&nbsp;<a  href='#' onclick='deleteUser(" + data[i].id + ")'>删除</a></td>\n" +
                    "  </tr>");
            }

        },
        error: function (data) {
            alert("error");

        }

    });

}


//打开添加窗口
function openAdd() {
    key = "save";
    //清空数据
    $("#id").val("");
    $("#name").val("");
    $("#pass").val("");
//打开对话框
    $('#myModal').modal('show');
    $('#dialogtitle').html("添加用户");
}

//定义操作函数
function updata() {
    $.ajax({
        url: ctx + "/user?op=updateUser",
        type: "post",
        data: {
            name: $('#name').val(),
            id: $('#id').val(),
            pass: $('#pass').val()
        },
        success: function () {
            alert("修改成功");
            // //关闭对话框
            // $("#editUserInfo").modal("hide");
            // getAllUser();
            location.reload();
        },
        error: function () {
            alert("修改失败");
        }
    });
}

//定义保存函数save
function save() {
    $.ajax({
        url: ctx + "/user?op=save",
        type: "post",
        data: {
            name: $('#name').val(),
            pass: $('#pass').val()
        },
        success: function () {
            alert("保存成功");
            // //关闭对话框
            // $("#editUserInfo").modal("hide");
            // getAllUser();
            location.reload();
        },
        error: function () {
            alert("保存失败");
        }
    });
}

//根据id删除用户
function deleteUser(id) {
    if (confirm('确实要删除该内容吗?')){
        $.ajax({
            type: "post",
            url: ctx + "/user?op=deleteUser",
            data: {
                id: id,
                // op: "deleteUser"
            },
            success: function () {
                alert("删除成功！");
                // getAllUser();
                location.reload();
            },
            error: function () {
                alert("删除失败！");
            }

        });
    }else {
        location.reload();
    }
}

