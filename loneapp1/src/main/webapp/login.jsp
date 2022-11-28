<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script type="text/javascript">
  function validate()
  {
	  var email=document.getElementById("email").value;
	  var pass=document.getElementById("pass").value;
	  
	  if(email=="")
		  {
		     document.getElementById("emailerror").innerHTML="Please enter Email...";
		     return false;
		  }
	  else
		  {
		     document.getElementById("emailerror").innerHTML="";
		  }
	  
	  if(pass=="")
		  {
			     document.getElementById("passerror").innerHTML="Please enter password...";
			     return false;
			  }
		  else
			  {
			     document.getElementById("passerror").innerHTML="";
			  }
	  
	  if(pass.length<5 || pass.length>8)
		  {
		  document.getElementById("passerror").innerHTML="Password should be in betwwen 5  to 8 character..";
		  return false;
		  }
	  else
	  {
	     document.getElementById("passerror").innerHTML="";
	  }

	  return true;
  }

</script>
</head>
<body>
 <div  align="center">
     <fieldset>
      
     <%
         String status =(String)request.getAttribute("status");
         if(status != null)
         {
        	 out.println(status);
         }
     %>
        <legend> <h1> Login </h1></legend>
        <form  onsubmit="return validate()"  action="loginServlet" method="post">
              <table>
                    <tr>
                       <td> Email : </td>
                       <td><input type="email"></td>
                       <td><span style="color:red">*</span></td>
                    </tr>
                    
                    <tr>
                       <td> Password : </td>
                       <td><input type="email"></td>
                       <td><span style="color:red">*</span></td>
                    </tr>
   
                    <tr>
                       <td><input type="submit" value="login"></td>
                    </tr>
              </table>
        </form>
        <br>
        <hr>
        <a href="Signup.jsp">Sign Up</a>
     </fieldset>
  </div>
</body>
</html>