<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%if( "true".equals(request.getAttribute("saved"))) {  %>
<label>The data is saved</label>
<% } else if("false".equals(request.getAttribute("saved"))){%>
<label>Boo ! Problem saving data. Please Try again !</label>
<%} %>

<%
System.out.print("param is "+request.getAttribute("saved"));
%>

<form action="SaveCont">
<table>
<tr>
<td> District</td>
<td><input type="text" name="id1"  id = 'id1'/></td><td><input type="submit" name="save" value="save"  onclick = "return checkEmptyOnForm();"/>&nbsp;</td>
</tr>

<tr>
<td> Block</td>
<td><input type="text" name="id2"  id = 'id2'/></td>
<td><input type="submit" name="save" value="save"  onclick = "return checkEmptyOnForm();"/>&nbsp;</td>
</tr>

<tr>
<td> Panchayat</td>
<td><input type="text" name="id3"  id = 'id3'/></td>
<td><input type="submit" name="save" value="save"  onclick = "return checkEmptyOnForm();"/>&nbsp;</td>
</tr>

<tr>
<td> Habitaion</td>
<td><input type="text" name="id4"  id = 'id4'/></td>
<td><input type="submit" name="save" value="save"  onclick = "return checkEmptyOnForm();"/>&nbsp;</td>
</tr>
</table>

<p><!-- <input type="submit" name="save" value="save"  onclick = "return checkEmptyOnForm();"/>&nbsp; --> 
  <input type="reset"
  value="reset" /></p>

</form>

</body>

<script type="text/javascript">
	checkEmptyOnForm = function()
	{
		return true;
		//console.log(document.getElementByName("id1"));
		console.log("test");
		
		if (isEmpty("id1") || isEmpty("id2") || isEmpty("id3") || isEmpty("id4"))
		{
			alert("Fill in the Empty fields1");
			return false;
		}
		return false;
	};
	
	isEmpty = function(id){
		if(document.getElementById(id) != null && document.getElementById(id).value == "")
			return true;
		return false;
	}
	
</script>
</html>