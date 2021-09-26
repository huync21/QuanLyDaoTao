<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 9/21/2021
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chọn lớp học phần</title>
    <style>

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        table td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        table tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<c:if test = "${sessionScope.sinhvien eq null}">
    <c:redirect url="gdDangNhap.jsp?err=timeout"/>
</c:if>
<h1 style="text-align:center">Chọn lớp học phần cho môn <i style="color: aqua">${listLopHocPhan[0].monHocKiHoc.monHoc.ten}</i></h1>
<table>
    <tr>
        <th>TT</th>
        <th>Mã lớp</th>
        <th>Tên lớp học phần</th>
        <th>Sĩ số tối đa</th>
        <th>Sĩ số thực</th>
        <th>Xem lịch</th>
        <th>Chọn</th>

    </tr>

    <c:forEach var="lhp" items="${sessionScope.listLopHocPhan}" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${lhp.id}</td>
            <td>${lhp.ten}</td>
            <td>${lhp.siSoToiDa}</td>
            <td>${lhp.siSoThucTe}</td>
            <td><a href="${pageContext.request.contextPath}/lichHocServlet?idlhp=${lhp.id}&tenlhp=${lhp.ten}">click để xem</a></td>
            <td><a href="${pageContext.request.contextPath}/dangKyHocServlet?action=them&idlhp=${lhp.id}">(Chọn)</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
