
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page | Eshop</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <div class="container-fluid">

            <div class="row mt-5">

                <div class="col-md-4 offset-md-4">

                    <div class="card">
                        
                         <%@include file="components/message.jsp" %>

                        <div class="card-body px-5">

                            <div class="container text-center">
                                <img src="img/user.png" style="max-width: 100px;" class="img-fluid" >
                            </div>

                            <h3 class="text-center my-3">Sign Up here!</h3>

                            <form action="RegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="name">Username</label>
                                    <input name="user_name" type="text"  class="form-control" id="name" placeholder="Enter username" required>
                                </div>

                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input name="user_email" type="email"  class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>

                                </div>

                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="user_password" type="password"  class="form-control" id="password" placeholder="Enter Password" required>
                                </div>

                                <div class="form-group">
                                    <label for="phone">Phone</label>
                                    <input name="user_phone" type="number"  class="form-control" id="phone" placeholder="Enter Phone" required>
                                </div>

                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea  name="user_address" class="form-control" id="address" rows="6" required></textarea>
                                </div>
                                
                                <a href="login.jsp" class="text-center d-block mb-2"> Already Register ? Sign In here</a>

                                <div class="container text-center">

                                    <button type="submit" class="btn btn-success">Register</button>
                                    <button type="reset" class="btn btn-warning">Reset</button>

                                </div>


                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </div>


    </body>
</html>
