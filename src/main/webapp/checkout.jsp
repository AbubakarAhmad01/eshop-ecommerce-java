<%
    
  User user = (User)session.getAttribute("current-user");
  if (user==null){
      
      session.setAttribute("message", "You are not logged in ! Login First to access checkout page");
      response.sendRedirect("login.jsp");
      return;
  }  


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Page</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container">
            <div class="row mt-5">
                <!---cart item --->
                <div class="col-md-6">
                    
                    <div class="card">
                        <div class="card-body">
                            
                            <h3 class="text-center mb-5">Your Selected Items</h3>
                            
                            <div class="cart-body">
                        
                            </div>
                        </div>
                        
                    </div>
                    
                    
                </div>
                <!---form details --->
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            
                            <h3 class="text-center mb-5">Your Order Details</h3>
                            <form>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" value="<%= user.getUserEmail()%>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">

                                </div> 
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Your Name</label>
                                    <input type="text" value="<%= user.getUserName()%>" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Your Name">

                                </div> 
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Phone No</label>
                                    <input type="text" value="<%= user.getUserPhone()%>" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Enter Phone No">

                                </div> 
                                
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Shipping Address</label>
                                    <textarea value="<%= user.getUserAddress()%>" class="form-control" id="exampleFormControlTextarea1" placeholder="Enter Your Address" rows="3"><%= user1.getUserAddress()%></textarea>
                                </div>
                                
                                <div class="container text-center">
                                    <button type="button" class="btn btn-success" onclick="Location1()">Place Order</button>
                                    <button type="button" class="btn btn-primary" onclick="Location2()">Continue Shopping</button>
                                </div>

                            </form>
                            
                        </div>
                        
                    </div>
                    
                </div>
                
            </div>
            
            
        </div>
        
        
        
        <%@include file="components/common_modals.jsp" %>
        
        <script>
    function Location1() {
      
      window.location = "order.jsp"
      
    }
    
    function Location2() {
      
      window.location = "index.jsp"
    }
  </script>
    </body>
</html>
