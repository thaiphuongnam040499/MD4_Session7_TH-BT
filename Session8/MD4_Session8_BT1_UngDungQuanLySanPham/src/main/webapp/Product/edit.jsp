<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/26/2023
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <h3>Students</h3>
    <table border={'1'}>
        <thead>
        <tr>
            <th>STT</th>
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>PASSWORD</th>
            <th>AGE</th>
            <th colSpan={2}>ACTIONS</th>
        </tr>
        </thead>
        <tbody>
        {
        listStudent.map((student, index) => {
        return <tr key={student.id}>
            <td>{index + 1}</td>
            <td>{student.id}</td>
            <td>{student.studentName}</td>
            <td>{student.email}</td>
            <td>{student.password}</td>
            <td>{student.age}</td>
            <td><button>Update</button></td>
            <td><button>Delete</button></td>
        </tr>
        })
        }

        </tbody>
    </table>
</div>
</body>
</html>
