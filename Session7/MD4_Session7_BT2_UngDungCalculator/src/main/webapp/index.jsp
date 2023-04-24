<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="caculator" method="get">
    <h1>Simple Calculator</h1>
    <h4>calculator</h4>
    <p>First operand: </p>
    <input type="text" name="firstoperand">
    <select name="operator" id="">
        <option value="+">plus</option>
        <option value="-">Subtraction</option>
        <option value="*">multiplication</option>
        <option value="/">division</option>
    </select>
    <p>Second operand: </p>
    <input type="text" name="secondoperand">
    <input type="submit" name="operator">
</form>

</body>
</html>