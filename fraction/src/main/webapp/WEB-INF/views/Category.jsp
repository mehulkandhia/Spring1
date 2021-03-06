<%@include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<h3 align="center">Category Page</h3>
<body>
<form action="<c:url value="/addCategory"/>" method="post">

<table align="center">
	<tr>
		<td>Category Name </td>
		<td><input type="text" id="categoryName" name="categoryName"/></td>
	</tr>
	<tr>
		<td>Category Desc </td>
		<td><input type="text" id="categoryDesc" name="categoryDesc"/></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="Add Category"/></td>
	</tr>
</table>
</form>

<table align="center" border="1">
	<tr>
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${ListCategories}" var="Category">
	<tr>
		<td>${Category.categoryid}</td>
		<td>${Category.categoryname}</td>
		<td>${Category.categorydesc}</td>
		<td>
			<a href="<c:url value="/editCategory/${Category.categoryid}"/>">Edit</a>
			<a href="<c:url value="/deleteCategory/${Category.categoryid}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>