<?php

$db=new mysqli("localhost","root","","health_science");
if(isset($_POST['cfs'])){
    $name=$_POST['fullname'];
    $email=$_POST['email'];
    $message=$_POST['msg'];
   

    $q=$db->query("INSERT INTO `contact`(`id`,`fullname`,`email`,`msg`) VALUES ('','$name','$email','$message')");
    if($q>0){
        header("Location:cformsuccess.php");
    }
    else{
        echo 'error occured!';
    }
    
   
}

 
?>








<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
</head>

<body>
    <section id="hire">
        <h1>Contact Us!</h1>

        <form method="post" action="contact.php">
            <div class="field name-box">
                <input type="text" id="name" name="fullname" placeholder="Who Are You?" />
                <label for="name">Name</label>
                <span class="ss-icon">check</span>
            </div>

            <div class="field email-box">
                <input type="text" id="email" name="email" placeholder="name@email.com" />
                <label for="email">Email</label>
                <span class="ss-icon">check</span>
            </div>

            <div class="field msg-box">
                <textarea id="msg" rows="10" name="msg" placeholder="Your message goes here..." /></textarea>
                <label for="msg">Msg</label>
                <span class="ss-icon">check</span>
            </div>

            <input class="button" type="submit" value="Send" name="cfs" />
        </form>
    </section>
</body>

</html>
<style>
    body {
        background: #111D24;
        font-size: 62.5%;
        font-family: 'Courier New', Courier, monospace;
        font-weight: 600;
        color: rgb(92, 87, 87);
    }
    
    body {
        margin: 60px auto;
        text-align: center;
        padding: 30px 0 90px;
        width: 80%;
        max-width: 1100px;
    }
    
    body section h1 {
        margin-bottom: 40px;
        font-size: 5em;
        font-family: 'Courier New', Courier, monospace;
        font-weight: 200;
        color: #fafafc;
    }
    
    form {
        width: 58.3333333333%;
        margin: 0 auto;
    }
    
    form .field {
        width: 100%;
        position: relative;
        margin-bottom: 15px;
    }
    
    form .field label {
        position: absolute;
        font-weight: bold;
        top: 0;
        left: 0;
        background: #f1e5e5;
        width: 100%;
        padding: 18px 0;
        font-size: 1.45em;
        letter-spacing: 0.075em;
        border-radius: 30px;
        -webkit-transition: all 333ms ease-in-out;
        -moz-transition: all 333ms ease-in-out;
        -o-transition: all 333ms ease-in-out;
        -ms-transition: all 333ms ease-in-out;
        transition: all 333ms ease-in-out;
    }
    
    form .field label+span {
        font-family: 'Courier New', Courier, monospace;
        opacity: 0;
        font-weight: bold;
        color: white;
        display: block;
        position: absolute;
        top: 12px;
        left: 7%;
        font-size: 2.5em;
        text-shadow: 1px 2px 0 #0000e9;
        -webkit-transition: all 333ms ease-in-out;
        -moz-transition: all 333ms ease-in-out;
        -o-transition: all 333ms ease-in-out;
        -ms-transition: all 333ms ease-in-out;
        transition: all 333ms ease-in-out;
    }
    
    form .field input[type=text],
    form .field textarea {
        border: none;
        border-radius: 30px;
        background: #111D24;
        width: 80.5%;
        margin: 0;
        padding: 18px 0;
        padding-left: 19.5%;
        color: #969696;
        font-size: 1.4em;
        letter-spacing: 0.05em;
    }
    
    form .field input[type=text]#msg,
    form .field textarea#msg {
        height: 16px;
        resize: none;
        -webkit-transition: all 333ms ease-in-out;
        -moz-transition: all 333ms ease-in-out;
        -o-transition: all 333ms ease-in-out;
        -ms-transition: all 333ms ease-in-out;
        transition: all 333ms ease-in-out;
    }
    
    form .field input[type=text]:focus,
    form .field input[type=text].focused,
    form .field textarea:focus,
    form .field textarea.focused {
        outline: none;
    }
    
    form .field input[type=text]:focus#msg,
    form .field input[type=text].focused#msg,
    form .field textarea:focus#msg,
    form .field textarea.focused#msg {
        padding-bottom: 150px;
    }
    
    form .field input[type=text]:focus+label,
    form .field input[type=text].focused+label,
    form .field textarea:focus+label,
    form .field textarea.focused+label {
        width: 18%;
        background: #5050ff;
        color: #969696;
    }
    
    form .field input[type=text].focused+label,
    form .field textarea.focused+label {
        color: #5050ff;
    }
    
    form .field:hover label {
        width: 18%;
        background: #969696;
        color: white;
    }
    
    form input[type=submit] {
        border-radius: 30px;
        background: #5050ff;
        color: white;
        -webkit-appearance: none;
        border: none;
        position: relative;
        padding: 13px 50px;
        font-size: 1.4em;
        letter-spacing: 0.4em;
        font-family: 'Courier New', Courier, monospace;
        font-weight: 600;
        -webkit-transition: all 333ms ease-in-out;
        -moz-transition: all 333ms ease-in-out;
        -o-transition: all 333ms ease-in-out;
        -ms-transition: all 333ms ease-in-out;
        transition: all 333ms ease-in-out;
    }
    
    form input[type=submit]:hover {
        background: #ffffff;
        color: #000000;
    }
    
    form input[type=submit]:focus {
        outline: none;
        background: #0000e9;
    }
    
     ::placeholder {
        font-family: 'Courier New', Courier, monospace;
        color: #fafafc;
    }
</style>
<script>
    // Input Lock
    $('textarea').blur(function() {
        $('#hire textarea').each(function() {
            $this = $(this);
            if (this.value != '') {
                $this.addClass('focused');
                $('textarea + label + span').css({
                    'opacity': 1
                });
            } else {
                $this.removeClass('focused');
                $('textarea + label + span').css({
                    'opacity': 0
                });
            }
        });
    });

    $('#hire .field:first-child input').blur(function() {
        $('#hire .field:first-child input').each(function() {
            $this = $(this);
            if (this.value != '') {
                $this.addClass('focused');
                $('.field:first-child input + label + span').css({
                    'opacity': 1
                });
            } else {
                $this.removeClass('focused');
                $('.field:first-child input + label + span').css({
                    'opacity': 0
                });
            }
        });
    });

    $('#hire .field:nth-child(2) input').blur(function() {
        $('#hire .field:nth-child(2) input').each(function() {
            $this = $(this);
            if (this.value != '') {
                $this.addClass('focused');
                $('.field:nth-child(2) input + label + span').css({
                    'opacity': 1
                });
            } else {
                $this.removeClass('focused');
                $('.field:nth-child(2) input + label + span').css({
                    'opacity': 0
                });
            }
        });
    });
</script>