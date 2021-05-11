<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <title>Contact Success</title>
</head>

<body>
    <div class="card">

        <h1>Success</h1>
        <p>We received your request<br/> we'll be in touch shortly!</p><br>
        <div class="modal-footer">
            <a class="btn btn-success btn-block" data-dismiss="modal" href="../main/index.html">OK</a>
        </div>

    </div>
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
    String  t3 =request.getParameter("msg");
    
    
    
    
    
    
//System.out.println("be fore insert"+t1);
//System.out.println("be fore insert"+t2);
//System.out.println("be fore insert"+t3);
        String query ="insert into product_review.contactus values (?,?,?)";
        PreparedStatement ps=con.prepareStatement(query);
        
        ps.setString(1, t1);
        System.out.println("name entered");
        ps.setString(2, t2);
            System.out.println("name entered");
        ps.setString(3, t3);
            System.out.println("name entered");
        
        
        int nub=ps.executeUpdate();
        

//con.commit();


        ps.close(); //st.close(); con.close(); %>
</body>

</html>
<style>
    body {
        text-align: center;
        padding: 40px 0;
        background: #1f2833;
    }
    
    h1 {
        color: #0b0c10;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
    }
    
    p {
        color: #404F5E;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size: 20px;
        margin: 0;
    }
    
    i {
        color: #9ABC66;
        font-size: 50px;
        line-height: 200px;
        margin-left: -15px;
    }
    
    .card {
        background: #c5c6c7;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
    }
    
    .modal-confirm .modal-footer {
        border: none;
        text-align: center;
        border-radius: 5px;
        font-size: 13px;
    }
    
    .btn {
        width: 100px;
        background-color: #66fcf1;
        border-radius: 2px;
        color: black;
        padding: 5px 10px;
        text-align: center;
        display: inline-block;
        font-size: 20px;
        margin: 10px 30px;
        cursor: pointer;
        text-decoration: none;
    }
</style>