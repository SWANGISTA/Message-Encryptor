<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Menu</title>
  <style>
    /* Internal CSS (good for single-page styling) */
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 40px;
    }
    h1 {
      color: #333;
      margin-bottom: 20px;
    }
    ol.menu {
      list-style: none;
      padding: 0;
      max-width: 300px;
    }
    ol.menu li {
      margin: 15px 0;
    }
    ol.menu li a {
      display: block;
      padding: 12px 18px;
      background-color: #007BFF;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
    }
    ol.menu li a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <h1>Menu</h1>
  <ol class="menu">
    <li><a href="predict.jsp">Predict Mark</a></li>
    <li><a href="viewAllPrediction.jsp">View Predictions</a></li>
  </ol>
</body>
</html>
