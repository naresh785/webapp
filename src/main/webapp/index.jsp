<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
    <h1>Simple Calculator</h1>
    <form action="calculate" method="post">
        <input type="number" name="num1" required />
        <select name="operation">
            <option value="add">+</option>
            <option value="subtract">-</option>
            <option value="multiply">*</option>
            <option value="divide">/</option>
        </select>
        <input type="number" name="num2" required />
        <input type="submit" value="Calculate" />
    </form>

    <%
        Double result = (Double) request.getAttribute("result");
        if (result != null) {
    %>
        <h2>Result: <%= result %></h2>
    <%
        }
    %>
</body>
</html>