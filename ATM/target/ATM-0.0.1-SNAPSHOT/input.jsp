<%@ page language="java" import="java.util.*" import="com.ccnu.bean.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <title>主界面</title>
       <meta name="viewport" charset="utf-8" content="width=device-width, initial-scale=1.0">
<!-- 新 Bootstrap 核心 CSS 文件 加到head中 -->  
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">  
<!-- 可选的Bootstrap主题文件（一般不用引入） 加到head中 -->  
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">  
<!-- jQuery文件。务必在bootstrap.min.js 之前引入  加到body内最后面中 -->  
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>  
<!-- 最新的 Bootstrap 核心 JavaScript 文件 加到body内最后面中 -->  
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>  
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

    <style text="text/css">
    #bs-example-navbar-collapse-1{
      margin:auto;
      width:700px;
    }
    #accountInfo{
      margin:auto;
      width:700px;
      margin-top:150px;
       align:center;
    }
    #mytable{
      margin:auto;
      width:400px;
    
    }
    </style>
    
  </head>
  <body>
  
  
  <nav class="navbar navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">主菜单</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        	<li class="active"><a href="input.jsp">存款</a></li>
            <li><a href="output.jsp">取款</a></li>
            <li><a href="transferAccount.jsp">转账</a></li>
            <li><a href="query.jsp">余额</a></li>
            
            <li><a href="modifyApw.jsp">重置密码</a></li>
             <li><a href="/ATM/list.action">退出</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	<div id="accountInfo"> 
	<center><strong>存款</strong></center><br>
	 
  <table class="table table-striped" >
    <tr>
       <label for="inputMoney">请输入存款金额：</label>
    <input type="text" class="form-control" id="inputMoney" autocomplete="off"><br>
    </tr>
    
    <button type="submit" class="btn btn-primary" onclick="ss()">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;
       <button type="reset" class="btn btn-primary" id="rebegin">重置</button><br><br>  
  </table>
  </div>
 <script type="text/javascript" src="../static/jquery-1.12.4.min.js"></script>
 <script type="text/javascript">
 function ss(){
		    $.ajax({
		        type: "GET",
		        url: "/ATM/input.action",
		        data:{ 
		        	"num":$("#inputMoney").val()
		        	},
		        success: function (result) {
		          alert("存款成功"); 
		         
		        }
		    });

 }
 </script>
  </body>
</html>
