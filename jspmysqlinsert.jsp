<html>

<head>
    <title>my sql Sample</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Health Science</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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


            ps.close(); //st.close(); con.close(); %>


            <div class="modal-dialog modal-confirm">
                <div class="modal-content">
                    <div class="modal-header">
                        <div class="icon-box">
                            <i class="material-icons">&#xE876;</i>
                        </div>
                        <h4 class="modal-title">Awesome!</h4>
                    </div>
                    <div class="modal-body">
                        <p class="text-center">You have successfull submitted your Data. Thank You!.</p>
                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-success btn-block" data-dismiss="modal" href="./miniproject/main/index.html">OK</a>
                    </div>
                </div>
            </div>
</body>

</html>


<style>
    body {
        font-family: 'Varela Round', sans-serif;
        background: linear-gradient(90deg, rgb(33, 36, 37) 6%, rgb(44, 43, 44) 29%, rgb(24, 25, 26) 84%);
    }
    
    .modal-confirm {
        color: #636363;
        width: 325px;
        margin: 30px auto;
    }
    
    .modal-confirm .modal-content {
        padding: 20px;
        border-radius: 5px;
        border: none;
    }
    
    .modal-confirm .modal-header {
        border-bottom: none;
        position: relative;
    }
    
    .modal-confirm h4 {
        text-align: center;
        font-size: 26px;
        margin: 30px 0 -15px;
    }
    
    .modal-confirm .form-control,
    .modal-confirm .btn {
        min-height: 40px;
        border-radius: 3px;
    }
    
    .modal-confirm .close {
        position: absolute;
        top: -5px;
        right: -5px;
    }
    
    .modal-confirm .modal-footer {
        border: none;
        text-align: center;
        border-radius: 5px;
        font-size: 13px;
    }
    
    .modal-confirm .icon-box {
        color: #fff;
        position: absolute;
        margin: 0 auto;
        left: 0;
        right: 0;
        top: -70px;
        width: 95px;
        height: 95px;
        border-radius: 50%;
        z-index: 9;
        background: #82ce34;
        padding: 15px;
        text-align: center;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
    }
    
    .modal-confirm .icon-box i {
        font-size: 58px;
        position: relative;
        top: 3px;
    }
    
    .modal-confirm.modal-dialog {
        margin-top: 80px;
        box-shadow: 0px 0px 20px #1b1b1b, inset 0px 0px 20px #242525, 0px 0px 60px #222122, inset 0px 0px 60px #302e2f;
    }
    
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
        background: #82ce34;
        text-decoration: none;
        transition: all 0.4s;
        line-height: normal;
        border: none;
    }
    
    .modal-confirm .btn:hover,
    .modal-confirm .btn:focus {
        background: #6fb32b;
        outline: none;
    }
    
    .trigger-btn {
        display: inline-block;
        margin: 100px auto;
    }
</style>