
<%@page import="java.util.Map"%>
<%@page import="com.shop.eshop.helper.Helper"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.eshop.entities.Category"%>
<%@page import="com.shop.eshop.helper.FactoryProvider"%>
<%@page import="com.shop.eshop.dao.CategoryDao"%>
<%@page import="com.shop.eshop.entities.User"%>
<%
    
  User user = (User)session.getAttribute("current-user");
  if (user==null){
      
      session.setAttribute("message", "You are not logged in ! Login First");
      response.sendRedirect("login.jsp");
      return;
  }
  else{
      
      if (user.getUserType().equals("normal")){
          
         session.setAttribute("message", "You are not admin !  Do not access this page");
      response.sendRedirect("login.jsp");
      return; 
      }
  }
    
    
    
    
    
    
%>
 <!--product category-->
 <%    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
     List<Category> list = cdao.getCategories();
     
//getting count

Map<String,Long> m = Helper.getCounts(FactoryProvider.getFactory());

 %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        
        
        
        <div class="container admin">
            
            <div class="container-fluid mt-3">
             
                <%@include file="components/message.jsp" %>
                
            </div> 
            
            <!--first row-->
            <div class="row mt-4">
                
                <!--first col-->
                
                <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body text-center">
                            
                            <div class="container">
                                <img style="max-width: 125px;"class="img-fluid rounded-circle" src="img/users.png" alt="user_icon">
                                
                            </div>
                            
                            <h1><%= m.get("userCount") %></h1>
                           <h1 class="text-uppercase text-muted">Users</h1> 
                            
                        </div>
                    </div>
                    
                    
                </div>
                <!--second col-->
                 <div class="col-md-4">
                    <div class="card">
                        
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;"class="img-fluid rounded-circle" src="img/category.png" alt="category_icon">
                                
                            </div>
                            <h1><%= list.size() %></h1>
                           <h1 class="text-uppercase text-muted">Category</h1> 
                            
                        </div>
                    </div>
                     
                    
                    
                </div>
                
                <!--third col-->
                 <div class="col-md-4">
                    
                    <div class="card">
                        
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;"class="img-fluid rounded-circle" src="img/product.png" alt="product_icon">
                                
                            </div>
                            <h1><%= m.get("productCount") %></h1>
                            <h1 class="text-uppercase text-muted">Products</h1> 
                            
                        </div>
                    </div>
                     
                    
                </div>
                
                
                
            </div>
            
 <!--second row--> 
 
 <div class="row mt-3">
     
     <!--second row first col-->
     <div class="col-md-6">
         
        <div class="card" data-toggle="modal" data-target="#add-category-modal">
                        
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;"class="img-fluid rounded-circle" src="img/add_category.png" alt="product_icon">
                                
                            </div>
                            <p class="mt-2">Click here to add new category</p>
                            <h1 class="text-uppercase text-muted">Add Category</h1> 
                            
                        </div>
                    </div>  
         
     </div>
     
     <!--second row second col-->
      <div class="col-md-6">
         
          <div class="card" data-toggle="modal" data-target="#add-product-modal">
                        
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;"class="img-fluid rounded-circle" src="img/plus.png" alt="plus_icon">
                                
                            </div>
                            <p class="mt-2">Click here to add new product</p>
                            <h1 class="text-uppercase text-muted"> Add Products</h1> 
                            
                        </div>
                    </div>
         
     </div>
     
 </div>
            
            
        </div>
        
        <!--add category modal-->
        

        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                       
                        <form action="ProductOperationServlet" method="post">
                            
                            <input type="hidden" name="operation" value="addcategory">
                            
                            <div class="form-group">

                                <input type="text" class="form-control" name="catTitle"   placeholder="Enter category title" required />

                            </div>

                            <div class="form-group">

                                <textarea style="height: 300px;" class="form-control" name="catDescription"  placeholder="Enter Category description" required ></textarea>
                            </div>
                                
                                                       
                            <div class="container text-center">
                                
                                <button class="btn btn-outline-success">Add Category</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                            
                        </form>
                        
                    </div>
                   
                </div>
            </div>
        </div>
        
        
        
        
        
        <!--End add category modal-->
        
        
        <!--- ---------------Add Product modal----------------------->
        
    <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Add Product Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                       
                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
                            
                            <input type="hidden" name="operation" value="addproduct">
                            
                            <!--product title--> 
                            
                            <div class="form-group">

                                <input type="text" class="form-control" name="pName"   placeholder="Enter title of product" required />

                            </div>
                            
                            <!--product description--> 

                            <div class="form-group">

                                <textarea style="height: 150px;" class="form-control" name="pDesc"  placeholder="Enter  description of product" required ></textarea>
                            </div>
                                
                            <!--product price--> 
                            
                              <div class="form-group">

                                <input type="number" class="form-control" name="pPrice"   placeholder="Enter price  of product" required />

                            </div>
                            
                            <!--product discount--> 
                            
                            <div class="form-group">

                                <input type="number" class="form-control" name="pDiscount"   placeholder="Enter discount of  product" required />

                            </div>
                            
                            <!--product quantity--> 
                            
                            <div class="form-group">

                                <input type="number" class="form-control" name="pQuantity"   placeholder="Enter quantity of  product" required />

                            </div>
                            
                            <!--product category--> 
                            
                            
                            
                            
                            
                            
                            <div class="form-group">

                                <select name="catId" class="form-control" id="" >
                                    
                                    <%
                                        
                                     for(Category c:list){

                                    %>
                                    
                                    <option value="<%= c.getCategoryId()%> "><%= c.getCategoryTitle()%> </option>
                                    
                                    <%  } %>
                                    
                                </select>

                            </div>
                            
                            <!--product file-->
                            
                            <div class="form-group">
                                <label for="pPic">Select Picture of product</label>
                                <input type="file" id="pPic" class="form-control" name="pPic"  required />

                            </div>
                            
                            <!--submit button--> 
                            
                                                       
                            <div class="container text-center">
                                
                                <button class="btn btn-outline-success">Add Product</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                            
                        </form>
                        
                        <!--end form--> 
                        
                    </div>
                   
                </div>
            </div>
        </div>
        
        
        

      
        <!--End add Product modal-->
        
     <%@include file="components/common_modals.jsp" %>   
    </body>
</html>
