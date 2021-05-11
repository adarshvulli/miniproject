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
String proname = request.getParameter("pname");
    PreparedStatement Stmt=con.prepareStatement("SELECT * from product_review.data where pname='"+proname+"'"); Stmt.executeQuery(); ResultSet rs=Stmt.getResultSet(); String fullname= null; String email=null; String pname=null; String rp=null; String recommend=null; String rating=null; %>
            <table border='3'>
                <th>Fullame</th>
                <th>Email</th>
                <th>product name</th>
                <th>review product</th>
                <th>recommend</th>
                <th>rating</th>
                <%    
while(rs.next())
    { 
        fullname=rs.getString(1);
        email=rs.getString(2);
        pname=rs.getString(3);
        rp=rs.getString(4);
        recommend=rs.getString(5);
        rating=rs.getString(6);
%>

                    <tr>
                        <td>
                            <%=fullname %>
                        </td>
                        <td>
                            <%=email %>
                        </td>
                        <td>
                            <%=pname %>
                        </td>
                        <td>
                            <%=rp %>
                        </td>
                        <td>
                            <%=recommend %>
                        </td>
                        <td>
                            <%=rating %>
                        </td>
                    </tr>



                    <%  }
    rs.close();Stmt.close();con.close();

    
     
    %>
            </table>

</body>

</html>