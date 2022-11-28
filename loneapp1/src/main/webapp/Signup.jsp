<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<script>
          
            // Function to check Whether both passwords
            // is same or not.
            function checkPassword(form) {
                password1 = form.pass.value;
                password2 = form.cpass.value;
                if (password1 != password2) {
                    alert ("\nPassword did not match: Please try again...")
                    return false;
                }
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
        <legend> <h1> Sign up</h1></legend>
        <form onSubmit = "return checkPassword(this)" action="Signup" method="post">
              <table>
                    <tr>
                       <td> Email : </td>
                       <td><input type="email" name="email" required="required"></td>
                       <td><span style="color:red" id="email error">*</span></td>
                    </tr>
                    
                    <tr>
                       <td> Password : </td>
                       <td><input type="password" name="pass" required="required" minlength=5 maxlength=10></td>
                       <td><span style="color:red" id="passerror">*</span></td>
                    </tr>
                    
                    <tr>
                       <td> Confirm Password : </td>
                       <td><input type="password" name="cpass" required="required" minlength=5 maxlength=10></td>
                       <td><span style="color:red" id="cpasserror">*</span></td>
                    </tr>
                    
                    <tr>
                       <td> Full Name: </td>
                       <td><input type="text" name="fname" required="required"></td>
                       <td><span style="color:red" id="fnameerror">*</span></td>
                    </tr>
                    
                    <tr>
                       <td> Contact Number: </td>
                       <td><input type="text" name="ucontact" required="required"></td>
                       <td><span style="color:red" id="ucontacterror">*</span></td>
                    </tr>
                    
                    
                    <tr>
                       <td> Salary : </td>
                       <td><input type="text" name="usalary" required="required" ></td>
                       <td><span style="color:red" id="usalaryerror">*</span></td>
                    </tr>
                    
                    
                    <tr>
                       <td> Age : </td>
                       <td><input type="text" name="uage" required="required"></td>
                       <td><span style="color:red" id="uageerror">*</span></td>
                    </tr>
                    
                    
                    <tr>
                       <td><input type="submit" value="register"></td>
                    </tr>
              </table>
        </form>
        <br>
        <hr>
        Already User?<a href="login.jsp">Login</a>
     </fieldset>
 </div>
</body>
</html>