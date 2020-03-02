<!DOCTYPE html>
<html lang="en">
<head>
<body bgcolor="green"></body>
<link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href="{% static 'css/bootstrap.min.css' %}" rel="stylesheet">  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">

		<div class="login-container">

			<div class="login-box">


				<!-- LOGIN -->
				<div id="login-form">
					<ul>
						<li id="tab-login" class="tab-bot-border">Login</li>
						<li id="tab-register">Register</li>
					</ul>
                     <form action="Logincon.jsp">
					<input type="text" id="login-username" name="username" value="username">
					<input type="password" id="login-password" name="password" value="password">

					<a href="#">Forgot your password?</a>

					<input type="submit" value="Login" >
                    </form>
				</div>

				<!-- REGISTER -->
				<div id="register-form">
					
					<ul>
						<li id="tab-login">Login</li>
						<li id="tab-register" class="tab-bot-border">Register</li>
					</ul>
 					<form action="registerprocess.jsp">
					<!-- EMAIL -->
					<input type="email" id="register-email" name="email" onblur="if (this.value == '') {this.value = 'email';}" onfocus="if (this.value == 'email') {this.value = '';}" maxlength="28" value="email"/>

						<div class="email-tip-icon"><img src="http://leongaban.com/_projects/whoat/_HTML/img/question-icon.png" alt="?"/></div>
						<div class="tip-message" id="message-email"><span>We recommend a valid work email</span></div>

					<!-- FIRST NAME -->
					<input type="text" id="register-firstname" name="firstname" onblur="if (this.value == '') {this.value = 'firstname';}" onfocus="if (this.value == 'firstname') {this.value = '';}" value="firstname"/>

					<!-- LAST NAME -->
					<input type="text" id="register-lastname" name="lastname" onblur="if (this.value == '') {this.value = 'lastname';}" onfocus="if (this.value == 'lastname') {this.value = '';}" value="lastname"/>

					<!-- PASSWORD -->
					<input type="password" id="register-password" name="password" value="password">

						<div class="password-tip-icon"><img src="http://leongaban.com/_projects/whoat/_HTML/img/question-icon.png" alt="?"/></div>
						<div class="tip-message" id="message-password"><span>Minimum 6 Characters</span></div>
	
					<input type="button" value="Register">
					</form>
				</div><!-- register-form -->

				<div class="form-background"></div>

			</div><!-- login-form -->

	    </div><!-- login-container -->

    </div><!-- container -->
    <script src="action.js">
    </script>
</body>
</html>