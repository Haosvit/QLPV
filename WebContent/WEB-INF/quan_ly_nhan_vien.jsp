<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/header.jsp" %>
<%@ page import="model.bean.User" %>
<%@ page import="java.util.ArrayList" %>

<% ArrayList<User> users = (ArrayList<User>) request.getAttribute("userList"); %>

<%-- 
    Document   : Quanlynhanvien
    Created on : Apr 12, 2016, 9:26:52 PM
    Author     : nhannguyen
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý nhân viên</title>
        <style>
            table{
                border-collapse: collapse;                
            }
            table, td, th {
                border: 1px solid black;
                
}
            .them{
                    float: left;                    
                    margin-left: 150px;
                }
                .align{
                    text-align: center;
                }
                .container{
                    margin-left: 80px;
                }
                .color{
                    color: blue;
                }
                element.style {
}
.theme-showcase > p > .btn {
    margin: 5px 0;
}
.btn-info {
    background-image: -webkit-linear-gradient(top,#5bc0de 0,#2aabd2 100%);
    background-image: -o-linear-gradient(top,#5bc0de 0,#2aabd2 100%);
    background-image: -webkit-gradient(linear,left top,left bottom,from(#5bc0de),to(#2aabd2));
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ff5bc0de', endColorstr='#ff2aabd2', GradientType=0);
    filter: progid:DXImageTransform.Microsoft.gradient(enabled=false);
    background-repeat: repeat-x;
    border-color: #28a4c9;
}
.btn-danger, .btn-default, .btn-info, .btn-primary, .btn-success, .btn-warning {
    text-shadow: 0 -1px 0 rgba(0,0,0,.2);
    -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.15),0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 0 rgba(255,255,255,.15),0 1px 1px rgba(0,0,0,.075);
}
.btn-group-lg>.btn, .btn-lg {
    padding: 10px 16px;
    font-size: 18px;
    line-height: 1.3333333;
    border-radius: 6px;
}
.btn-info {
    color: #fff;
    background-color: #5bc0de;
    border-color: #46b8da;
    margin-left: 150px;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
button, input, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button, html input[type=button], input[type=reset], input[type=submit] {
    -webkit-appearance: button;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

user agent stylesheetinput, textarea, keygen, select, button {
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    margin: 0em 0em 0em 0em;
    font: 13.3333px Arial;
}
user agent stylesheetinput, textarea, keygen, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb;
}
user agent stylesheetbutton {
    -webkit-appearance: button;
}
Inherited from body
body {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
Inherited from html
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
html {
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}
Pseudo ::before element
:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
Pseudo ::after element
:after, :before {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.row {
    margin-right: -15px;
    margin-left: -15px;
}   
body {
  overflow-y: scroll;
}
        </style>
        
        
        <!--<link type="text/css" href="bootstrap.min.css" rel="stylesheet"/>   -->
    </head>
    <body>                
        <h1 class="align" style="color: darkblue"> Quản lý nhân viên</h1>
        <br><br><br><br><br>
        <input type="button" class="btn btn-lg btn-info" name="themNhanVien" value="Thêm nhân viên">
        <label class="container" >Tìm kiếm theo :</label>
        <select class="btn btn-lg btn-info" style="margin-left: 50px" name="Timkiem">            
            <option value="mkh">Mã khách hàng</option>
            <option value="ht">Họ tên</option>
            <option value="ngs">Ngày sinh</option>
            <option value="sdt">Số điện thoại</option>
            <option value="gt">Giới tính</option>
            <option value="email">Email</option>
            <option value="all">Tất cả</option>
        </select>        
        <input class="container"type="text" name="loaitimkiem" style="width: 125px"/>       
        <input class="btn btn-lg btn-info" style="margin-left: 100px" type="button" name="tim" value="Tìm kiếm"/>
        
        <br><br>
        <table align="center" class="align" style="width: 80%" >
            <tr class="color">
                <th>STT</th>
                <th>Mã nhân viên</th>
                <th>Họ tên</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>Tài khoản</th>
                <th>Mật khẩu</th>
                <th>Số điện thoại</th>
                <th>Phân quyền</th>
                <th colspan="2">Thao tác</th>
            </tr>
            <tr>
                <td>1</td>
                <td>NV1</td>
                <td>Nguyễn A</td>
                <td>1/2/1990</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Nam</option>
                        <option>Nữ</option>
                    </select>
                </td>
                <td>a.nguyen@phongve.com</td>
                <td>123456</td>
                <td>0123456789</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Admin</option>
                        <option>Nhân viên</option>                        
                    </select>
                </td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Lưu</button></td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Xóa</button></td>
            </tr>
            <tr>
                <td>2</td>
                <td>NV2</td>
                <td>Nguyễn B</td>
                <td>4/12/1992</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Nam</option>
                        <option>Nữ</option>
                    </select>
                </td>
                <td>b.nguyen@phongve.com</td>
                <td>123456</td>
                <td>0123456789</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Nhân viên</option>
                        <option>Admin</option>
                    </select>
                </td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Lưu</button></td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Xóa</button></td>
            </tr>
            <tr>
                <td>3</td>
                <td>NV3</td>
                <td>Nguyễn C</td>
                <td>3/2/1990</td>
                <td>
                    <select name="gt" style="width: 100%">                        
                        <option>Nữ</option>
                        <option>Nam</option>
                    </select>
                </td>
                <td>c.nguyen@phongve.com</td>
                <td>123456</td>
                <td>0123456789</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Admin</option>
                        <option>Nhân viên</option>
                    </select>
                </td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Lưu</button></td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Xóa</button></td>
            </tr>
            <tr>
                <td>4</td>
                <td>NV4</td>
                <td>Nguyễn D</td>
                <td>4/3/1980</td>
                <td><select name="gt" style="width: 100%">
                        <option>Nữ</option>
                        <option>Nam</option>
                    </select>
                </td>
                <td>d.nguyen@phongve.com</td>
                <td>123456</td>
                <td>0123456789</td>
                <td>
                    <select name="gt" style="width: 100%">
                        <option>Nhân viên</option>
                        <option>Admin</option>
                    </select>
                </td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Lưu</button></td>
                <td><button class="btn btn-lg btn-success" style="width: 100%">Xóa</button></td>
            </tr>            
        </table>
    </body>
</html>
