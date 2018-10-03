<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>

<html lang="en">
<head>

    <title>Keep-Board</title>

    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>

</head>

<body>
	<!-- Create a form which will have text boxes for Note title, content and status along with a Add 
		 button. Handle errors like empty fields -->
		 <c:if test="${note != null}">
                     <form action="add" method="post">


         </c:if>
                <table>
                    <tr>
                        <td>Note Id</td>
                        <td><input type="number" path="noteId"  name="noteId"/></td>
                    </tr>


                      <tr>
                         <td>Note Title</td>
                         <td><input type="text" path="noteTitle"  name="noteTitle"/></td>
                      </tr>
                      <tr>
                         <td>Note Content</td>
                         <td><input type="text" path="noteContent" name="noteContent"/></td>
                      </tr>
                      <tr>
                           <td>Note Status</td>
                           <td><input type="text" path="noteStatus" name="noteStatus"/></td>
                     </tr>


                      <tr>
                         <td></td>
                         <td><input type="submit"></form></td>
                      </tr>








	<!-- display all existing notes in a tabular structure with Title,Content,Status, Created Date and Action -->
	            <table border="1" width="90%">
                <tr>
                <th>NoteId</th>  <th>oteTitle</th>  <th>noteContent</th>  <th>noteStatus</th> <th>Action</th>
                </tr>

                            <c:forEach var="note" items="${noteList}">

                                        <tr>
                                            <td><c:out value="${noteId}" /></td>
                                            <td><c:out value="${noteTitle}" /></td>
                                            <td><c:out value="${noteContent}" /></td>
                                            <td><c:out value="${noteStatus}" /></td>
                                            <td>
                                            <a href="/update?id=<c:out value='${noteId}' />">Update</a><br>
                                            <a href="/delete?id=<c:out value='${noteId}' />">Delete</a>
                                            </td>
                                            </tr>
                            </c:forEach>
                </table>
                 <h4>
                                                <a href="/Add">Add</a><br>
                                                <a href="/list">List All</a>
                </h4>
         </form>
    </body>

</html>