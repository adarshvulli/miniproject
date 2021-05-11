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
    PreparedStatement Stmt=con.prepareStatement("SELECT * from product_view.data");
    
    Stmt.executeQuery();
    ResultSet rs=Stmt.getResultSet();
    
    String name= null;
String no=null;
String phno=null;
	%>
            <table border='3'>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <%    
while(rs.next())
    { 
name=rs.getString(1);
no=rs.getString(2);
phno=rs.getString(3);
%>

                    <tr>
                        <td>
                            <%=name %>
                        </td>
                        <td>
                            <%=no %>
                        </td>
                        <td>
                            <%=phno %>
                        </td>
                    </tr>



                    <%  }
    rs.close();Stmt.close();con.close();
    if(name != null)
    out.println("Welcome to "+name);
     
    %>
            </table>

</body>

</html>