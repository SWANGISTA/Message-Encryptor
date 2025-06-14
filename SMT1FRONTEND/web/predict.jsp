<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Predict Mark</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9fafb;
            margin: 40px;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }
        form {
            max-width: 450px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        td {
            padding: 10px 8px;
            vertical-align: middle;
        }
        td:first-child {
            text-align: right;
            font-weight: bold;
            width: 40%;
            color: #555;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus {
            border-color: #007BFF;
            outline: none;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        p {
            text-align: center;
            margin-bottom: 20px;
            font-size: 1.1em;
        }
    </style>
</head>
<body>
    <h1>Predict Mark</h1>
    <p>Hey My name is :</p>
    <form action="startSession.do" method="POST">
        <table>
            <tr>
                <td>Name :</td>
                <td><input type="text" name="name" required /></td>
            </tr>
            <tr>
                <td>Student number :</td>
                <td><input type="text" name="studNum" required /></td>
            </tr>
            <tr>
                <td>Module :</td>
                <td><input type="text" name="module" required /></td>
            </tr>
            <tr>
                <td>Mark :</td>
                <td><input type="text" name="mark" required /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Submit" value="Predict" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
