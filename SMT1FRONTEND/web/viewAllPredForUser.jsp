<%@ page import="za.ac.tut.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>All Predictions</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 40px;
    }
    h1 {
      color: #333;
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      padding: 10px;
      border: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #04AA6D;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    a.cta {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007BFF;
      color: #fff;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s ease;
    }
    a.cta:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <h1>All Predictions for Student</h1>
  <%
    Student stud = (Student) request.getAttribute("stud");
    // Debug: ensure list sizes match expectations
    out.println("<p>Module count: " + stud.getModules().size() +
                ", Marks: " + stud.getMark().size() +
                ", Predictions: " + stud.getPrediction().size() + "</p>");
  %>

  <table>
    <thead>
      <tr>
        <th>Module</th><th>Mark</th><th>Prediction</th>
      </tr>
    </thead>
    <tbody>
      <%
        for (int i = 0; i < stud.getMark().size(); i++) {
      %>
      <tr>
        <td><%= stud.getModules().get(i) %></td>
        <td><%= stud.getMark().get(i) %></td>
        <td><%= stud.getPrediction().get(i) %></td>
      </tr>
      <%
        }
      %>
    </tbody>
  </table>

  <p>
    Student: <strong><%= stud.getName() %></strong> |
    Number: <strong><%= stud.getId() %></strong>
  </p>

  <p><a class="cta" href="menu.jsp">Back to Menu</a></p>
</body>
</html>
