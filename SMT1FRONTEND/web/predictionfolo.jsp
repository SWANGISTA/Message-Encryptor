<%@page import="za.ac.tut.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f4f8;
                margin: 20px;
                color: #333;
            }
            h1 {
                color: #0056b3;
            }
            table {
                border-collapse: collapse;
                margin-top: 15px;
            }
            table, td {
                border: 1px solid #ccc;
            }
            td {
                padding: 8px 12px;
            }
            input[type="text"] {
                padding: 6px 8px;
                border: 1px solid #aaa;
                border-radius: 4px;
                width: 200px;
            }
            input[type="submit"] {
                background-color: #0056b3;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                font-weight: bold;
            }
            input[type="submit"]:hover {
                background-color: #003d80;
            }
            p {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <h1>Prediction</h1>
        <%
         Student student  = (Student)request.getAttribute("student");
         String prediction = (String)request.getAttribute("predictions");
         Double mark = (Double)request.getAttribute("mark");
         String module = (String)request.getAttribute("module");
        %>
        <p>
            Hey <%=student.getName()%> you prediction on <%=module%> is <%=prediction%> because your Predicated is :<%=mark%>
        </p>
        <p>
            fill the form to predict another module
        </p>
         <form action="MidSession.do" method="POST">
            <table>
            
                <tr>
                    <td>Module : </td>
                    <td>
                        <input type="text" name="module" required=""/>
                    </td>
                </tr>
                <tr>
                    <td>Mark : </td>
                    <td>
                        <input type="text" name="mark" required=""/>
                    </td>
                </tr>
                <tr>
                    <td> </td>
                    <td>
                        <input type="submit" name="Submit" />
                    </td>
                </tr>
                
            </table>
        </form>
        <p>
            
        </p>
        <form action="endSession.do" method="POST">
            <table>
                <tr>
                    <td>Or click here to view summary</td>
                    <td>
                        <input type="submit" name="view Sammary"/>
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
