<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View All</title>
  <style>
    /* Internal CSS for this page */
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 40px;
      text-align: center;
    }
    h1 {
      color: #333;
      margin-bottom: 20px;
    }
    form {
      display: inline-block;
      padding: 20px;
      background: rgba(0, 123, 255, 0.1);
      border-radius: 6px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    table {
      margin: 0 auto;
      border-collapse: collapse;
    }
    td {
      padding: 8px 12px;
    }
    input[type="submit"] {
      background-color: #007BFF;
      color: #fff;
      border: none;
      padding: 8px 16px;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <h1>View All</h1>
  <form action="viewAllstast.do" method="POST">
    <table>
      <tr>
        <td>VIEW:</td>
        <td><input type="submit" name="viewAll" value="Submit" /></td>
      </tr>
    </table>
  </form>
</body>
</html>
