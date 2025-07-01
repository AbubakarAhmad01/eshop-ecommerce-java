
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page | Eshop</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>



        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">

                    <div class="card mt-5">

                        <div class="card-header">
                            <h3 class="text-center my-3">Login here!</h3>
                        </div> 

                        <div class="card-body">

                            
                            <%@include file="components/message.jsp" %>
                            
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="email">Email </label>
                                    <input name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>

                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="password" type="password" class="form-control" id="Password" placeholder="Password" required>
                                </div>

                                <a href="register.jsp" class="text-center d-block mb-2"> New User ? Sign Up here</a> 
                                
                                <div class="container text-center">
                                    
                                    <button type="submit" class="btn btn-success border-0">Login</button>
                                    <button type="reset" class="btn btn-warning border-0">Reset</button>
                                </div>
                                    
                                    
                                    
                            </form>

                        </div>

                    </div>


                </div>


            </div>


        </div>        




    </body>
</html>
