package loneapp1;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String email=request.getParameter("email");

		String password=request.getParameter("pass");
		
		String fullname=request.getParameter("fname");

		String ucontact= request.getParameter("ucontact") ;

		Integer usalary=Integer.parseInt(request.getParameter("usalary"));
		
		Integer uage=Integer.parseInt(request.getParameter("uage"));

		PreparedStatement stmt;

		ResultSet rs;

		Connection con;

		RequestDispatcher rd;

		try 

		{

			Class.forName("com.mysql.cj.jdbc.Driver");

			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/loneapp1", "root","Rahul@2000");

			String sql="INSERT INTO `customer` ( `email`, `fullname`, `password`, `uage`, `usalary`, `ucontact`) VALUES (?,?,?,?,?,?);";

			stmt=con.prepareStatement(sql);

			stmt.setString(1,email);

			stmt.setString(2,fullname);

			stmt.setString(3,password);

			stmt.setInt(4,uage);

			stmt.setInt(5,usalary);

			stmt.setString(6,ucontact);

			int row=stmt.executeUpdate();

			if(row>0)

			{

				request.setAttribute("status","Successfully Signed up... Now you can Login.");

				rd=request.getRequestDispatcher("login.jsp");

				rd.forward(request, response);

			}		

			else

			{

				request.setAttribute("status","Failed to sign up....! Please Try again.");

				rd=request.getRequestDispatcher("signup.jsp");

				rd.forward(request, response);		

			}

		} 

		catch (Exception e) 

		{

			e.printStackTrace();

		}

	}

	}

