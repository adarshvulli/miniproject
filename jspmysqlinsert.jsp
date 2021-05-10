<html>

<head>
    <title>my sql Sample</title>

</head>

<body>

    <%@page import="java.sql.*" %>

        <%
	System.out.println("injsp");
	Class.forName("com.mysql.jdbc.Driver");
      
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","");
//Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.23.144:1521:orcl","userid","pwd");    
System.out.println("connection established");
    
		String t1=request.getParameter("fullname");
		String t2 = request.getParameter("email");
		String  t3 =request.getParameter("pname");
		String  t4 =request.getParameter("rp");
		String  t5 =request.getParameter("recommend");
		String  t6 =request.getParameter("rate");
		
		
		
		
		
//System.out.println("be fore insert"+t1);
//System.out.println("be fore insert"+t2);
//System.out.println("be fore insert"+t3);
			String query ="insert into product_review.data values (?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			
			ps.setString(1, t1);
			System.out.println("name entered");
			ps.setString(2, t2);
				System.out.println("name entered");
			ps.setString(3, t3);
				System.out.println("name entered");
			ps.setString(4, t4);
			System.out.println("name entered");
			ps.setString(5, t5);
				System.out.println("name entered");
			ps.setString(6, t6);
				System.out.println("name entered");
			
			int nub=ps.executeUpdate();
//con.commit();
			System.out.println("updated");
	
			ps.close();
		//st.close();

  
   con.close();
    
     
    %>
            do u want to see the inserted data<a href="./jspmysqldemo.jsp">click here</a>

</body>

</html>