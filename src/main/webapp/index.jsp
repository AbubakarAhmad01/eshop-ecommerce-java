
<%@page import="com.shop.eshop.helper.Helper"%>
<%@page import="com.shop.eshop.entities.Category"%>
<%@page import="com.shop.eshop.dao.CategoryDao"%>
<%@page import="com.shop.eshop.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.shop.eshop.dao.ProductDao"%>
<%@page import="com.shop.eshop.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eshop Online Shopping Site in India</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        <div class="container-fluid">
        <div class="row mt-3  mx-2">
            
            <% 
                
           String cat =  request.getParameter("category");
           
                
            ProductDao dao = new ProductDao(FactoryProvider.getFactory());
            
            List<Product> list = null;
         
             if( cat==null || cat.trim().equals("all")){
                
                list = dao.getAllProducts();
                
            }else{
                
                int cid = Integer.parseInt(cat.trim());
                list = dao.getAllProductsById(cid);
                
            }
           // List<Product> list = dao.getAllProducts();
            
            CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
            List<Category> clist = cdao.getCategories();
            


            %>
            
            <!--show categories-->

            <div class="col-md-2" >


                <div class="list-group mt-4">
                    <a href="index.jsp?category=all" style="background-color: green;border-color: green;" class="list-group-item  list-group-item-action active"> All Products</a>



                    <%                    for (Category c : clist) {

                    %>

                    <a href="index.jsp?category=<%= c.getCategoryId() %>" class="list-group-item list-group-item-action"><%=c.getCategoryTitle()%></a>

                    <%
                        }

                    %>


                </div>     
            </div>   

            <!--show products-->     

            <div class="col-md-10">

                <!--row-->

                <div class="row mt-4">

                    <!--col-->

                    <div class="col-md-12">

                        <div class="card-columns">

                            <!--traversing products-->

                            <%                          for (Product p : list) {
                            %>

                              <!--product card-->
                            <div class="card product-card">

                                <div class="container text-center">
                                    <img class="card-img-top m-2" style="max-height: 200px; max-width: 100%; width: auto;" src="img/products/<%= p.getpPhoto()%>" alt="Card image cap">
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title"><%=p.getpName()%></h5>
                                    <p class="card-text"><%=Helper.get10Words(p.getpDesc())%></p>
                                </div>

                                <div class="card-footer text-center">
                                    <button class="btn custom-bg text-white" onclick="add_to_cart(<%= p.getpId()%> , '<%= p.getpName() %>' , <%= p.getPriceAfterDiscount() %>)">Add to Cart</button>
                                    <button class="btn btn-outline-success "> &#8377; <%= p.getPriceAfterDiscount() %>/- <span class="text-secondary discount-lable">&#8377; <%= p.getpPrice() %> , <%= p.getpDiscount() %>% off </span> </button>

                                </div>

                            </div>

                            <%   }
                            
                                if (list.size() == 0) {

                                    out.println("<h3>No items in this category</h3>");
                                }


                            
                            %>   

                        </div>

                    </div>

                </div>

   
        </div>
        </div>
                            
        <%@include file="components/common_modals.jsp" %>
                            
    </body>
</html>
