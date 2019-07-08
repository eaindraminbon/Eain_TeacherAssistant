<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/include.jsp"%>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);

body {
  background: #999;
  padding: 40px;
  font-family: "Open Sans Condensed", sans-serif;
}

#bg {
  position: fixed;
  left: 0;
  right:0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color:#0a3e40;
  background-size: cover;
  opacity: .9;
 
}

form {
  position: relative;
  width: 300px;
  margin: 0 auto;
  background: #00bcd447;
  padding: 20px 22px;
  border: 1px solid;
  border-top-color: rgba(255,255,255,.4);
  border-left-color: rgba(255,255,255,.4);
  border-bottom-color: rgba(60,60,60,.4);
  border-right-color: rgba(60,60,60,.4);
}

form input, form button {
  width: 100%;
  border: 1px solid;
  border-bottom-color: rgba(255,255,255,.5);
  border-right-color: rgba(60,60,60,.35);
  border-top-color: rgba(60,60,60,.35);
  border-left-color: rgba(80,80,80,.45);
  background-color: rgba(0,0,0,.2);
  background-repeat: no-repeat;
  padding: 8px 24px 8px 10px;
  font: bold .875em/1.25em "Open Sans Condensed", sans-serif;
  letter-spacing: .075em;
  color: #fff;
  text-shadow: 0 1px 0 rgba(0,0,0,.1);
  margin-bottom: 19px;
}

form input:focus { background-color: rgba(0,0,0,.4); }

form input.email {
  background-position: 220px 10px;
}

form input.pass {
  background-position: 223px 8px
}

::-webkit-input-placeholder { color: #ccc; text-transform: uppercase; }
::-moz-placeholder { color: #ccc; text-transform: uppercase; }
:-ms-input-placeholder { color: #ccc; text-transform: uppercase; }

form button[type=submit] {
  width: 100%;
  margin-bottom: 0;
  color: #eeeeee;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  text-transform: uppercase;
  background:#03a9f4;
  border-top-color: #9fb5b5;
  border-left-color: #608586;
  border-bottom-color: #1b4849;
  border-right-color: #1e4d4e;
  cursor: pointer;
  
}
img{
  display: block;
  margin: auto;
  width: 100%;
  height: auto;
}

#login-button{
  cursor: pointer;
  position: initial;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 30px;
  margin: auto;
  width: 100px;
  height: 100px;
  border-radius: 50%;
  background: rgba(3,3,3,.8);
  overflow: hidden;
  opacity: 0.4;
  box-shadow: 10px 10px 30px #000;}
</style>
 <div id="bg"></div>
<br/><br/><br/><br/><br/><br/><br/>
<form action="<c:url value='/login.htm'/>" method="POST">
 <div id="login-button">
  <img src="<c:url value='/resources/assets/img/hicon.png' />">
</div>
  <label for=""></label>
  <input type="text" name="username" id="" placeholder="email" class="email">
  <label for=""></label>
  <input type="password" name="password" id="" placeholder="password" class="pass">
  <button type="submit">login to your account</button>
<div class="primary-btn text-uppercase" data-toggle="modal" data-target="#myModal" style="text-align: center;background-color: #00BCD4;margin-top:20px;margin-left:60px;" id="check">Sing Up</div> 
</form>
<!-- Central Modal Medium Warning -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog modal-notify modal-warning" role="document">
    <!--Content-->
    <div class="modal-content">
        <!--Header-->
        <div class="modal-header" style="background-color:#009688;">
            <p class="heading lead" style="color:white;">အချက်အလက်များ အပြည့်အစုံထည့်ပါ</p>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true" class="white-text">&times;</span>
            </button>
        </div>
        <!--Body-->
    <div class="modal-body" style="background-color: ghostwhite;">
    <input type="hidden" id="pageContext" value="<c:url value='/'/>" />
	<input type="text" class="form-control" name="uName" placeholder="User Name" onblur="this.placeholder ='User Name...'" id="uName">
	<input type="email" class="form-control" name="email" placeholder="Email..." onblur="this.placeholder = 'Email...'" id="email" required="required" style="margin-top:10px;" onchange="checkEmail();">
	<input type="password" class="form-control" name="uPassword" placeholder="Password..." onblur="this.placeholder ='Password...'" id="uPassword" style="margin-top:10px;">
	<input type="password" class="form-control" name="cPassword" placeholder="Confirm Password..." onblur="this.placeholder ='Confirm Password...'" id="cPassword" style="margin-top:10px;" onchange="checkPass();">
    </div>
     <!--Footer-->
    <div class="modal-footer justify-content-center" style="background-color:#0096883b;">
    <div  class="btn btn-outline-success waves-effect" style="border-color: #009688;margin-right: 10px;" onclick="testPatient(this);">Check</div>
    <div class="btn btn-outline-danger waves-effect" data-dismiss="modal">Cancel</div>
    </div>
    </div>
    <!--/.Content-->
</div>
</div>
<!-- Central Modal Medium Warning-->
<script>
function checkPass()
{
	var contextUrl=$("#pageContext").val();
	var upass=document.getElementById("uPassword").value;
	var cpass=document.getElementById("cPassword").value;
	var uname=document.getElementById("uName").value;
	var email=document.getElementById("email").value;
	if(upass==cpass)
		{
		}
	else
		alert("password not match!!!");
	}
	
function checkEmail() {

    var email = document.getElementById('email');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    
   email.value="";
  /*  email.focus;*/
    return false;
 }
}
    
    function testPatient(btn)
    {
    	var contextUrl=$("#pageContext").val();
    	var upass=document.getElementById("uPassword").value;
    	var cpass=document.getElementById("cPassword").value;
    	var uname=document.getElementById("uName").value;
    	var email=document.getElementById("email").value;
    	if(upass==cpass)
    		{
    		$.ajax({
    			contentType : 'application/json; charset=utf-8',
    			type : "GET",
    			url : contextUrl + "/admin/ajax/testPatient",
    			dataType : 'json',
    			data: {'upass':upass,
    					'uname':uname,
    					'email':email,
    			},
    			success : function(data) {
    				if(data)
    					{
    					alert("successful!!!");
    					document.location.href='welcome.htm';
    					}
    				else{
    					alert("You are not allowed!!!");
    					}
    				console.log(data)
    			},
    			complete : function() {
    				alert(data);
    			}

    		});
    		}
    	else
    		alert("password not match!!!");
    }

</script>
            