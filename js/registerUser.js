$("#cancelModal").click(function() { 
  
});
 
$("#regNowBtn").click(function() { 
    $('#signInCloseBtn').trigger('click');
});

$("#loginsubmit").click(function() {
    var email = $('#email').val();
    var password = $('#password').val();
    var flag = true;
    var cPage = $('#currentPage').val();
     
    if(email == ""){ 
        $('#email').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Email</div>';
        $("#loginresult").hide().html(output).slideDown();  
        return false;
    }
    
    // Password field validation
    if(password == ""){ 
        $('#password').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Password</div>';
        $("#loginresult").hide().html(output).slideDown();   
        return false;
    } else if(password.length < 6) {
        $('#password').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Password must be at least 6 characters long</div>';
        $("#loginresult").hide().html(output).slideDown();   
        return false;
    }
    
    if(flag) {
        $.ajax({
            type: 'post',
            url: 'signin.php', 
            dataType: 'json',
            data: { 
                email: email,
                password: password,
                loginsubmit: 1
            },
            beforeSend: function() {
                $('#loginsubmit').attr('disabled', true);
            },
            complete: function() {
                $('#loginsubmit').attr('disabled', false);
            },  
            success: function(data) {
                if(data.type == 'error') {
                    output = '<div class="error">'+data.text+'</div>';
                    $("#loginresult").hide().html(output).slideDown(); 
                    return false;
                } else {
                    document.location.href = "employerAccount.php";
                }
            }
        });
    }
}); 
 
$("#regsubmit").click(function() { 
    if (grecaptcha === undefined) {
        alert('Recaptcha not defined'); 
        return false; 
    }

    var response = grecaptcha.getResponse();

    if (!response) {
        alert('Could not get recaptcha response'); 
        return false; 
    }

    //get input field values
    var name = $('#signup-username').val();
    var email = $('#signup-email').val();
    var mob = $('#signup-mobile').val();
    var pass = $('#signup-password').val();
    var output = "";
    var flag = true;

    /********validate all our form fields***********/
    /* Name field validation  */
    if(name == ""){ 
        $('#name').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Name</div>';
        $("#result").hide().html(output).slideDown();  
        return false;
    }

    if(email == ""){ 
        $('#email').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Email</div>';
        $("#result").hide().html(output).slideDown();  
        return false;
    }

    /* Password field validation */
    if(pass == ""){ 
        $('#signup-password').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Password</div>';
        $("#result").hide().html(output).slideDown();  
        return false;
    } else if(pass.length < 6) {
        $('#signup-password').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Password must be at least 6 characters long</div>';
        $("#result").hide().html(output).slideDown();  
        return false;
    }

    /* Mob field validation */
    if(mob == ""){ 
        $('#mob').css('border-color','red'); 
        flag = false;
        output = '<div class="error">Please Enter Your Mobile No.</div>';
        $("#result").hide().html(output).slideDown();  
        return false;
    }

    /********Validation end here ****/
    /* If all are ok then we send ajax request to email_send.php *******/
    if(flag) {
        $.ajax({
            type: 'post',
            url: 'registerUser.php', 
            dataType: 'json',
            data: { 
                username: name,
                useremail: email,
                mob: mob,
                pass: pass,
                regsubmit: 1,
                captcha: response
            },
            beforeSend: function() {
                $('#regsubmit').attr('disabled', true);
            },
            complete: function() {
                grecaptcha.reset();
                $('#regsubmit').attr('disabled', false);
            },  
            success: function(data) {
                if(data.type == 'error') {
                    output = '<div class="error">'+data.text+'</div>';
                    $("#result").hide().html(output).slideDown(); 
                    return false;
                } else {
                    $('input').val(''); 
                    $('#signUpCloseBtn').trigger('click');
                    $('#regSuccessSubmit').trigger('click');
                    return true;
                }
            }
        });
    }
});

$("#regEmpSuccessSubmit").click(function() { 
    // Success message handling code here
});
