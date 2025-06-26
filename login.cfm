<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!--- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> --->
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>

<body>
    
<div class="container mt-3">
    <cfoutput>Login</cfoutput>
    <div class="col-6">
        <form id="login_form" name="login_form" method="post">
            <input type="hidden" id="user_id" name="user_id" value=-1>
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-auto">
                  <label for="password" class="col-form-label">Password</label>
                </div>
                <div class="col-auto">
                  <input type="password" id="password" name="password" class="form-control" aria-labelledby="passwordHelpInline" required>
                </div>
                <div class="col-auto">
                  <span id="passwordHelpInline" class="form-text">
                    Must be 8-20 characters long.
                  </span>
                </div>
            </div>
            <div class="mt-3">
                <input type="submit" id="submit" value="Login" class="btn btn-primary">
                <input type="reset" value="Reset" class="btn btn-primary">
            </div>
        </form>
    </div>
    
    <button class="btn btn-primary mt-3"><a href="register.cfm" class="text-white">Register</a></button>

</div>

</body>

</html>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
    integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
    </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"
    integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous">
    </script>


<script>

    $(document).ready(function () {

        $("#login_form").submit(function (event) {
            event.preventDefault();
            var formData = {
                'user_id': $("#user_id").val(),
                'email': $("#email").val(),
                'pass': $("#password").val(),
            };
            console.log('data = ', formData);
            $.ajax({
                url: "submit.cfc/?method=check_user",
                data: formData,
                type: 'post',
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if(data == "Invalid Credentials"){
                        alert("Invalid Credentials");
                        $('#login_form')[0].reset();
                    }else{
                        window.location.replace("welcome.cfm");
                    }
                }
            });
        });

    });

</script>