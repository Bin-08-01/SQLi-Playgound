<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa thông tin người dùng</title>
    <style>
        body {
            font-family: 'Helvetica', sans-serif;
            margin: 20px;
            padding: 0;
            background-color: #f7f7f7;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        fieldset {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }

        legend {
            font-weight: bold;
            font-size: 1.2em;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 12px;
            box-sizing: border-box;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

        input:focus {
            border-color: #3498db;
        }

        button {
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            background-color: #3498db;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #1c70b6;
        }

        p {
            color: #ff0000;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<form action="/users/edit" method="post">
    <fieldset>
        <legend>Thông tin người dùng</legend>
        <input type="hidden" value="${user.id}" name="id">
        <div>
            <label for="name">Tên:</label>
            <input type="text" value="${user.name}" name="name" id="name">
        </div>
        <div>
            <label for="username">Tên đăng nhập:</label>
            <input type="text" value="${user.username}" name="username" id="username">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="text" value="${user.email}" name="email" id="email">
        </div>
    </fieldset>
    <button type="submit">Chỉnh sửa</button>
</form>
<p><span>${error}</span></p>
</body>
</html>
