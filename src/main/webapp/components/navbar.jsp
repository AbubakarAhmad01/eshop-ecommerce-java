

<%@page import="com.shop.eshop.entities.User"%>
<%
    
  User user1 = (User)session.getAttribute("current-user");

    

%>
    






<nav class="navbar navbar-expand-lg navbar-dark  custom-bg">
 
    <div class="container">
        
         <a class="navbar-brand" href="index.jsp">Eshop</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="index.jsp?category=all">All Products</a>
          
          <div class="dropdown-divider"></div>
          
         
          
           
          <a class="dropdown-item" href="#">Laptop</a>
          <a class="dropdown-item" href="#">Clothes</a>
          <a class="dropdown-item" href="#">Mobile Phones</a>
          <a class="dropdown-item" href="#">Electronics</a>
          <a class="dropdown-item" href="#">Kitchen Application</a>
          <a class="dropdown-item" href="#">Sports & Outdoors</a>
          <a class="dropdown-item" href="#">Books</a>
           
            
          
        </div>
      </li>
      
    </ul>
      
        
      
      <ul class="navbar-nav ml-auto">

          <%             
              if (user1 == null) {
                  
                  %>
                  <li class="nav-item active">
                      <a class="nav-link" href="login.jsp">Login</a>
                  </li>  
                  <li class="nav-item active">
                      <a class="nav-link" href="register.jsp">Sign Up</a>
                  </li>   
                  
                  
                  <%                  } else {

                  %>
                  <li class="nav-item active">
                      <a class="nav-link" href="<%= user1.getUserType().equals("admin") ? "admin.jsp" : "normal.jsp" %>"><%=user1.getUserName() %></a>
                  </li>  
                  <li class="nav-item active">
                      <a class="nav-link" href="LogoutServlet">Logout</a>
                  </li>   



                  <% 
                      
                      }


                  %>
          
                   <li class="nav-item active">
                       <a class="nav-link" href="#" data-toggle="modal" data-target="#cart"><i class="fa fa-cart-plus"></i> <span class="cart-items">( 0 )</span></a>
                  </li> 
          
      </ul>
  </div>
        
    </div>
    
</nav>