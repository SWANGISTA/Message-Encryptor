<%@ page import="java.util.List" %>
<%@ page import="za.ac.tut.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>All Students</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      margin: 40px;
    }
    h1 {
      color: #333;
      text-align: center;
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    th, td {
      padding: 12px;
      border: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #007BFF;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    tr:hover {
      background-color: #ddd;
    }
    .student-info {
      margin-bottom: 20px;
    }
    .student-info p {
      margin: 5px 0;
    }
    .cta {
      display: inline-block;
      padding: 10px 20px;
      background-color: #28a745;
      color: white;
      text-decoration: none;
      border-radius: 4px;
      transition: background-color 0.3s;
    }
    .cta:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>
  <h1>All Students</h1>
  <%
    List<Student> allStudents = (List<Student>) request.getAttribute("allstuds");
    if (allStudents != null && !allStudents.isEmpty()) {
      for (Student stud : allStudents) {
  %>
  <div class="student-info">
    <p><strong>Name:</strong> <%= stud.getName() %></p>
    <p><strong>Student Number:</strong> <%= stud.getId() %></p>
    <table>
      <thead>
        <tr>
          <th>Module</th>
          <th>Mark</th>
          <th>Prediction</th>
        </tr>
      </thead>
      <tbody>
        <%
          for (int i = 0; i < stud.getModules().size(); i++) {
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
  </div>
  <%
      }
    } else {
  %>
  <p>No student data available.</p>
  <%
    }
  %>
  <p><a class="cta" href="menu.jsp">Back to Menu</a></p>
</body>
</html>
