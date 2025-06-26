<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
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
        <cfoutput>Register</cfoutput>

        <div class="col-6">
            <form id="register_form" name="register_form" method="post">
                <input type="hidden" id="user_id" name="user_id" value=-1>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="name@example.com" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" required>
                </div>
                <div class="row g-3 align-items-center mb-3">
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
                <div class="row g-3 align-items-center mb-3">
                    <div class="col-auto">
                      <label for="con_pass" class="col-form-label">Confirm Password</label>
                    </div>
                    <div class="col-auto">
                      <input type="password" id="con_pass" name="con_pass" class="form-control" aria-labelledby="passwordHelpInline" required>
                    </div>
                    <div class="col-auto">
                      <span id="passwordHelpInline" class="form-text">
                        Confirm your Password
                      </span>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="name@example.com" required>
                </div>
                <div class="mt-3">
                    <input type="submit" id="submit" value="Register" class="btn btn-primary">
                    <input type="reset" value="Reset" class="btn btn-warning">
                </div>
            </form>
        </div>

    <button class="btn btn-primary mt-3"><a href="login.cfm" class="text-white">Login</a></button>  

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

        $("#register_form").submit(function (event) {
            event.preventDefault();
            var formData = {
                'user_id': $("#user_id").val(),
                'name': $("#name").val(),
                'email': $("#email").val(),
                'pass': $("#password").val(),
                'phone' : $("#phone").val()
            };
            console.log('data = ', formData);
            if($("#con_pass").val() == $("#password").val()){
                $.ajax({
                    url: "submit.cfc/?method=insertdb",
                    data: formData,
                    type: 'post',
                    dataType: "json",
                    success: function (data) {
                        alert("successfully Registerd");
                        $('#register_form')[0].reset();
                        window.location.replace("login.cfm");
                        console.log('data = ', data);
                    }
                });
            }else{
                alert("password is not matched");
                $('#register_form')[0].reset();
            }
        });
    });

</script>