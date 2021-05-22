<%--
  Created by IntelliJ IDEA.
  User: WYY
  Date: 2021/3/15
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 获取项目上下文路径--%>
<%
String path=request.getContextPath();
request.setAttribute("ctx",path);
%>
<script type="text/javascript">
var ctx='<%=path%>'
</script>
<%--导入vue--%>
<link rel="stylesheet" href="${ctx}/js/antdesign/antd.min.css">

<%--未引入vue，防止报错，打注释--by lld--%>
<%--<script src="${ctx}/js/vue/vue.min.js"></script>--%>
<%--<script src="${ctx}/js/vue/vue-router.min.js"></script>--%>
<%--<script src="${ctx}/js/vue/qs.js"></script>--%>
<%--<script src="${ctx}/js/vue/axios.min.js"></script>--%>
<%--<script src="${ctx}/js/antdesign/antd.min.js"></script>--%>
<%--<script src="${ctx}/js/ace/assets/js/moment.min.js"></script>--%>

<%--<link rel="stylesheet" href="${ctx}/js/bootstrap/css/bootstrap.min.css">--%>



<%--导入bootstrap--%>
<script src="${ctx}/js/jquery/jquery-3.4.1.min.js"></script>
<script src="${ctx}/js/bootstrap/js/bootstrap.min.js"></script>


<!--导入ace-->
<link rel="stylesheet" href="${ctx}/js/ace/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${ctx}/js/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="${ctx}/js/ace/assets/css/fonts.googleapis.com.css" />
<link rel="stylesheet" href="${ctx}/js/ace/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
<link rel="stylesheet" href="${ctx}/js/ace/assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="${ctx}/js/ace/assets/css/ace-rtl.min.css" />

<!--将bootstrap的css放在最下面会保留原来bootstrap的样式，否则会被ace冲掉，比如按钮样式-->


<script src="${ctx}/js/ace/assets/js/ace-extra.min.js"></script>
<script src="${ctx}/js/ace/assets/js/jquery-2.1.4.min.js"></script>
<script src="${ctx}/js/ace/assets/js/bootstrap.min.js"></script>
<script src="${ctx}/js/ace/assets/js/ace-elements.min.js"></script>
<script src="${ctx}/js/ace/assets/js/ace.min.js"></script>
<%--dataTable插件--%>
<script src="${ctx}/js/ace/assets/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/js/ace/assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script src="${ctx}/js/ace/assets/js/dataTables.buttons.min.js"></script>
<script src="${ctx}/js/ace/assets/js/buttons.flash.min.js"></script>
<script src="${ctx}/js/ace/assets/js/buttons.html5.min.js"></script>
<script src="${ctx}/js/ace/assets/js/buttons.print.min.js"></script>
<script src="${ctx}/js/ace/assets/js/buttons.colVis.min.js"></script>
<script src="${ctx}/js/ace/assets/js/dataTables.select.min.js"></script>
<!--导入ace结束 -->


<!--导入Validator验证器css，要在bootstrap的css之下导入-->
<link rel="stylesheet" href="${ctx}/js/bootstrap/validator/css/bootstrapValidator.min.css">
<!--导入openicon的css，要在bootstrap的css之下导入-->
<link rel="stylesheet" href="${ctx}/js/bootstrap/openicon/css/open-iconic-bootstrap.min.css">

<!--导入Validator验证器js,包含中文化js，一定要在bootstrap的js之下，否则不起作用-->
<script src="${ctx}/js/bootstrap/validator/js/bootstrapValidator.min.js"></script>
<script src="${ctx}/js/bootstrap/validator/js/language/zh_CN.js"></script>



<style>
    /*
    bootstrapValidetor图标偏移解决方案
     */
    .has-feedback .form-control-feedback {
        position: absolute;
        top: 3px;
        right: 15px;
        display: block;
        width: 34px;
        height: 34px;
        line-height: 34px;
        text-align: center;
    }
    /*
     使用bootstrap4.x的模态框头部样式，避免偏移
    */
    .modal-header {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align: start;
        align-items: flex-start;
        -ms-flex-pack: justify;
        justify-content: space-between;
        padding: 1rem 1rem;
        border-bottom: 1px solid #dee2e6;
        border-top-left-radius: 0.3rem;
        border-top-right-radius: 0.3rem;
    }

    .modal-header .close {
        padding: 1rem 1rem;
        margin: -1rem -1rem -1rem auto;
    }

    /*
     ant design vue table的样式
    */

    /*
     table头部的样式
   */
    .ant-table-thead > tr > th {
        color: rgba(0, 0, 0, 0.85);
        font-size: 16px;
        font-weight: normal;
        text-align: center;
        background-color:#f1f1f1;
        border-bottom: 1px solid #d8d8d8;
    }

    /*鼠标移动到行上的样式*/
    .ant-table-tbody > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td,
    .ant-table-tbody > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td {
        background: #c6e2ff;
    }
    /*行选中的样式*/
    .ant-table-tbody > tr.ant-table-row-selected td {
        background: #c6e2ff;
    }

</style>
