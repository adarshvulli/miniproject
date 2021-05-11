<!DOCTYPE html>



<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews</title>
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
 PreparedStatement Stmt=con.prepareStatement("SELECT * from product_review.data");
 
 Stmt.executeQuery();
 ResultSet rs=Stmt.getResultSet();
 
 String fullname= null;
String email=null;
String pname=null;
String rp=null;
String recommend=null;
String rating=null;

 %>







            <div class="container">
                <h1>Reviews</h1>
                <table class="rwd-table">
                    <tbody>
                        <tr>
                            <th>Full name</th>
                            <th>Email</th>
                            <th>Product name</th>
                            <th>Review</th>
                            <th>Recommend (Y/N)</th>
                            <th>Rating</th>
                        </tr>
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
                                <td data-th="Supplier Code">
                                    <%=fullname %>
                                </td>
                                <td data-th="Supplier Name">
                                    <%=email %>
                                </td>
                                <td data-th="Invoice Number">
                                    <%=pname %>
                                </td>
                                <td data-th="Invoice Date">
                                    <%=rp %>
                                </td>
                                <td data-th="Due Date">
                                    <%=recommend %>
                                </td>
                                <td data-th="Net Amount">
                                    <%=rating %>
                                </td>
                            </tr>
                            <%  }
                rs.close();Stmt.close();con.close();
    
     
                %>

                    </tbody>
                </table>

            </div>
</body>

</html>
<style>
    @import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';
    * {
        font-family: 'Open Sans', sans-serif;
    }
    
    .rwd-table {
        margin: auto;
        min-width: 300px;
        max-width: 100%;
        border-collapse: collapse;
    }
    
    .rwd-table tr:first-child {
        border-top: none;
        background: #66FCF1;
        color: rgb(0, 0, 0);
    }
    
    .rwd-table tr {
        border-top: 1px solid #ddd;
        border-bottom: 1px solid #ddd;
        background-color: #d7dde2;
    }
    
    .rwd-table tr:nth-child(odd):not(:first-child) {
        background-color: #ffffff;
    }
    
    .rwd-table th {
        display: none;
    }
    
    .rwd-table td {
        display: block;
    }
    
    .rwd-table td:first-child {
        margin-top: .5em;
    }
    
    .rwd-table td:last-child {
        margin-bottom: .5em;
    }
    
    .rwd-table td:before {
        content: attr(data-th) ": ";
        font-weight: bold;
        width: 120px;
        display: inline-block;
        color: #000;
    }
    
    .rwd-table th,
    .rwd-table td {
        text-align: left;
    }
    
    .rwd-table {
        color: #333;
        border-radius: .4em;
        overflow: hidden;
    }
    
    .rwd-table tr {
        border-color: #bfbfbf;
    }
    
    .rwd-table th,
    .rwd-table td {
        padding: .5em 1em;
    }
    
    @media screen and (max-width: 601px) {
        .rwd-table tr:nth-child(2) {
            border-top: none;
        }
    }
    
    @media screen and (min-width: 600px) {
        .rwd-table tr:hover:not(:first-child) {
            background-color: #d8e7f3;
        }
        .rwd-table td:before {
            display: none;
        }
        .rwd-table th,
        .rwd-table td {
            display: table-cell;
            padding: .25em .5em;
        }
        .rwd-table th:first-child,
        .rwd-table td:first-child {
            padding-left: 0;
        }
        .rwd-table th:last-child,
        .rwd-table td:last-child {
            padding-right: 0;
        }
        .rwd-table th,
        .rwd-table td {
            padding: 1em !important;
        }
    }
    /* THE END OF THE IMPORTANT STUFF */
    /* Basic Styling */
    
    body {
        background-color: #1F2833;
    }
    
    h1 {
        text-align: center;
        font-size: 2.4em;
        color: #f2f2f2;
    }
    
    .container {
        display: block;
        text-align: center;
    }
    
    h3 {
        display: inline-block;
        position: relative;
        text-align: center;
        font-size: 1.5em;
        color: #cecece;
    }
    
    h3:before {
        content: "\25C0";
        position: absolute;
        left: -50px;
        -webkit-animation: leftRight 2s linear infinite;
        animation: leftRight 2s linear infinite;
    }
    
    h3:after {
        content: "\25b6";
        position: absolute;
        right: -50px;
        -webkit-animation: leftRight 2s linear infinite reverse;
        animation: leftRight 2s linear infinite reverse;
    }
    
    @-webkit-keyframes leftRight {
        0% {
            -webkit-transform: translateX(0)
        }
        25% {
            -webkit-transform: translateX(-10px)
        }
        75% {
            -webkit-transform: translateX(10px)
        }
        100% {
            -webkit-transform: translateX(0)
        }
    }
    
    @keyframes leftRight {
        0% {
            transform: translateX(0)
        }
        25% {
            transform: translateX(-10px)
        }
        75% {
            transform: translateX(10px)
        }
        100% {
            transform: translateX(0)
        }
    }
</style>