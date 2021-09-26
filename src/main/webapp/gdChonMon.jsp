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
    <title>Chọn môn học</title>
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
<h1 style="text-align:center">Chọn môn học</h1>
<table>
    <tr>
        <th>TT</th>
        <th>Mã môn học</th>
        <th>Tên môn học</th>
        <th>Số tín chỉ</th>
        <th>Chọn</th>

    </tr>

    <c:forEach var="mhkh" items="${listMonHocKiHoc}" varStatus="i">
        <tr>
            <td>${i.count}</td>
            <td>${mhkh.monHoc.id}</td>
            <td>${mhkh.monHoc.ten}</td>
            <td>${mhkh.monHoc.soTC}</td>
            <td><a href="${pageContext.request.contextPath}/chonLopHocPhanServlet?idmhkh=${mhkh.id}">click</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
