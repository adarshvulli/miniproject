<?php

$db=new mysqli("localhost","root","","health_science");
$result=$db->query("SELECT * FROM `data` ORDER BY id DESC")
 
?>



    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Data</title>
    </head>

    <body>
        <div class="container">
            <h1>Data</h1>
            <table class="rwd-table">
                <tbody>
                    <tr>

                        <th>Full Name</th>
                        <th>Location</th>
                        <th>Instrument Name</th>
                        <th>People trained</th>
                        <th>Researchers</th>
                        <th>Publications</th>
                        <th>Students</th>
                        <th>Samples</th>
                    </tr>


                    <?php

while($res=mysqli_fetch_array($result)){

    
    echo '<tr>';

    echo '<td>'.$res['fullname'].'</td>';
    echo '<td>'.$res['location'].'</td>';
    echo '<td>'.$res['iname'].'</td>';
    echo '<td>'.$res['ppltrained'].'</td>';
    echo '<td>'.$res['researchers'].'</td>';
    echo '<td>'.$res['publications'].'</td>';
    echo '<td>'.$res['students'].'</td>';
    echo '<td>'.$res['samples'].'</td>';

    echo '</tr>';
    

}



?>


                </tbody>
            </table>

        </div>
    </body>

    </html>
    <style>
        .rwd-table {
            margin: auto;
            min-width: 300px;
            max-width: 100%;
            border-collapse: collapse;
        }
        
        .rwd-table tr:first-child {
            border-top: none;
            background: #428bca;
            color: #fff;
        }
        
        .rwd-table tr {
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            background-color: #f5f9fc;
        }
        
        .rwd-table tr:nth-child(odd):not(:first-child) {
            background-color: #ebf3f9;
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
            background-color: #111D24;
            font-family: 'Courier New', Courier, monospace;
            font-weight: bold;
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