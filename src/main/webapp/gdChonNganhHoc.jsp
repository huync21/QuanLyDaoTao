<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.ThanhVien" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 9/21/2021
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chọn ngành học</title>
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
<h1>Chọn ngành học</h1>
<form action="dangKyHocServlet" method="post">
    <table>
        <tr>
            <td>Ngành:</td>
            <td>
                <select name="nganh">
                    <c:forEach var="sinhVienKhoa" items="${listSinhVienKhoa}">
                        <option value="${sinhVienKhoa.id}">${sinhVienKhoa.khoa.ten}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>Kì học:</td>
            <td>
                <select name="ki">
                    <c:forEach var="kiHoc" items="${listKiHoc}">
                        <option value="${kiHoc.id}">${kiHoc.hocKi.ten} - năm ${kiHoc.namHoc.ten}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>

            <td> <input type="submit" value="Vào đăng ký"> </td>
        </tr>
    </table>
</form>
</body>
</html>
