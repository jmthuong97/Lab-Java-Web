<%-- 
    Document   : register
    Created on : May 14, 2018, 9:19:03 AM
    Author     : JMT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div class="wrap">
            <div class="menu">
                <a></a>
                <a href="#">Home</a>
                <a href="#">Take Quiz</a>
                <a href="#">Make Quiz</a>
                <a href="#">Magane Quiz</a>
            </div>
            <div class="content">
                <h3>Registration Form</h3>
                <form>
                    <table>
                        <tbody>
                            <tr>
                                <td class="title">User Name:</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td class="title">Password:</td>
                                <td><input type="password"></td>
                            </tr>
                            <tr>
                                <td class="title">User Type:</td>
                                <td class="title">
                                    <select>
                                        <option value="student">Student</option>
                                        <option value="teacher">Teacher</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="title">Email:</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><button>Sign In</button><a href="#" class="register">Register</a></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
