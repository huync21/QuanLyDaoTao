<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dang nhap</title>
</head>
<body>
<%--code deu? cua thay:--%>
<%--<%--%>
<%--    if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {--%>
<%--%> <h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4><%--%>
<%--} else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {--%>
<%--%> <h4 color="red">Sai tên đăng nhập/mật khẩu!</h4><%--%>
<%--    }--%>
<%--%>--%>

<%--best practice:--%>
<c:if test = "${param.err eq 'timeout'}">
    <h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4>
</c:if>

<c:if test = "${param.err eq 'fail'}">
    <h4 color="red">Sai tên đăng nhập/mật khẩu!</h4>
</c:if>

<h2> Đăng nhập </h2>
<form name="dangnhap" action="dangNhapServlet" method="post">
    <table border="0">
        <tr>
            <td>Tên đăng nhập:</td>
            <td><input type="text" name="username" id="username" required/></td>
        </tr>
        <tr>
            <td>Mật khẩu:</td>
            <td><input type="password" name="password" id="password"
                       required/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Đăng nhập"/></td>
        </tr>
    </table>
</form>
</body>
</html>