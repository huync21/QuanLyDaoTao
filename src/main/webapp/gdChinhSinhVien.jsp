<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@include file ="/header.jsp" %>
    <title>Trang chu sinh vien</title>
</head>
<body>
<%--<%--%>
<%--    ThanhVien sv = (ThanhVien)session.getAttribute("sinhvien");--%>
<%--    if(sv==null){--%>
<%--        response.sendRedirect("gdDangNhap.jsp?err=timeout");--%>
<%--    }--%>
<%--%>--%>

<c:if test = "${sessionScope.sinhvien eq null}">
    <c:redirect url="gdDangNhap.jsp?err=timeout"/>
</c:if>
<h2> Trang chủ sinh viên </h2>
<form action="chonNganhServlet" method="post">
    <input type="submit" value="Vào đăng ký">
</form>
</body>
</html>