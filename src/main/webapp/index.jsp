<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Simple Servlet calculator</title>

    <script type="text/javascript">
        function calc(form){
            with(form){
                if(firstNumber.value == "" || secondNumber.value == ""){
                    alert("Please enter two numbers!");
                    return false;
                }
                if(isNaN(firstNumber.value) || isNaN(secondNumber.value)){
                    alert("Number format is wrong!");
                    return false;
                }
                if(operation.value == "-1"){
                    alert("Please choose an operation!");
                    return false;
                }
            }
        }
    </script>
</head>

<body>
<form action="CalculateServlet" method="post" onsubmit="return calc(this);">
    <table align="center" border="0">
        <tr>
            <th>Simple Servlet calculator</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="firstNumber">
                <select name="operation">
                    <option value="-1">operation</option>
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="*">*</option>
                    <option value="/">/</option>
                </select>
                <input type="text" name="secondNumber">
                <input type="submit" value="GO">
            </td>
        </tr>
    </table>
</form>
</body>
</html>

