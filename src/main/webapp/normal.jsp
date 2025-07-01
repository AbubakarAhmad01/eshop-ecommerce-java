
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
          <!-- Bootstrap CSS -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
         <%@include file="components/common_css_js.jsp" %>
         
         
         <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Arial', sans-serif;
      height: 100vh;
      display: flex;
      flex-direction: column;
      background-color: #f5f5f5;
    }

    .container1 {
      display: flex;
      width: 70%;
      height: 80vh;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
      margin-top: 50px; /* Space below the navbar */
      margin-left: 330px;
    }

    /* Sidebar Styling */
    .sidebar {
      width: 300px;
      background-color: green;
      color: white;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 20px;
    }

    .sidebar img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
      border: 3px solid white;
      margin-bottom: 10px;
    }

    .sidebar h2 {
      margin-bottom: 10px;
      font-size: 20px;
      text-align: center;
    }

    .sidebar p {
      font-size: 14px;
      color: #d8f3e5;
      text-align: center;
      margin-bottom: 20px;
    }

    .sidebar button {
      width: 100%;
      background: none;
      border: none;
      color: white;
      font-size: 16px;
      padding: 10px;
      margin: 5px 0;
      text-align: left;
      cursor: pointer;
      border-radius: 5px;
      transition: background 0.3s ease;
    }

    .sidebar button:hover, .sidebar button.active {
      background-color: #388E3C;
    }

    .logout-btn {
      margin-top: auto;
      width: 100%;
      background-color: #f44336;
      color: white;
      font-size: 16px;
      border: none;
      padding: 10px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .logout-btn:hover {
      background-color: #d32f2f;
    }

    /* Main Content Styling */
    .content {
      flex: 1;
      background-color: #ffffff;
      padding: 30px;
      display: none;
    }

    .content.active {
      display: block;
    }

    .content h2 {
      margin-bottom: 20px;
      font-size: 24px;
      color: #333;
    }

    .profile-info div {
      margin-bottom: 15px;
    }

    .profile-info strong {
      font-size: 16px;
      color: #333;
    }

    .edit-btn {
      display: inline-block;
      background-color: #ff9800;
      color: white;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
      text-decoration: none;
    }

    .edit-btn:hover {
      background-color: #e68900;
    }

  </style>
    </head>
    <body>
        
         <%@include file="components/navbar.jsp" %>
        
     
          <div class="container1">
    <!-- Sidebar -->
    <div class="sidebar">
      <img src="img/avatar-design.png" alt="Profile Picture">
      <h2><%=user1.getUserName()%></h2>
      <p><%= user1.getUserEmail()%></p>

      <button id="profileInfoBtn" class="active btn btn-link text-white">Profile Info</button>
      <button id="orderHistoryBtn" class="btn btn-link text-white">Order History</button>
      <button class="logout-btn btn" onclick="Location3()">Logout</button>
    </div>

    <!-- Main Content -->
    <div id="profileInfo" class="content active">
      <h2>Profile Info</h2>
      <form>
        <div class="mb-3">
          <label for="name" class="form-label">Name:</label>
          <input type="text" class="form-control" id="name" value="<%=user1.getUserName()%>" />
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" class="form-control" id="email" value="<%= user1.getUserEmail()%>" />
        </div>
        <div class="mb-3">
          <label for="phone" class="form-label">Phone:</label>
          <input type="tel" class="form-control" id="phone" value="<%= user1.getUserPhone()%>" />
        </div>
        <div class="mb-3">
          <label for="address" class="form-label">Address:</label>
          <textarea class="form-control" id="address" rows="3"><%= user1.getUserAddress()%></textarea>
        </div>
        <button type="submit" class="edit-btn btn">Save Changes</button>
      </form>
    </div>

    <div id="orderHistory" class="content">
      <h2>Order History</h2>
      <div class="order-summary">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Order ID</th>
              <th>Date</th>
              <th>Amount</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>#12345</td>
              <td>2024-12-01</td>
              <td>$199.99</td>
              <td>Shipped</td>
              <td><a href="#" class="btn btn-success btn-sm">Track Order</a></td>
            </tr>
            <tr>
              <td>#12346</td>
              <td>2024-11-25</td>
              <td>$49.99</td>
              <td>Delivered</td>
              <td><a href="#" class="btn btn-success btn-sm">Track Order</a></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS and dependencies -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

  <script>
    // Sidebar Buttons
    const profileInfoBtn = document.getElementById('profileInfoBtn');
    const orderHistoryBtn = document.getElementById('orderHistoryBtn');
    const profileInfo = document.getElementById('profileInfo');
    const orderHistory = document.getElementById('orderHistory');

    profileInfoBtn.addEventListener('click', () => {
      profileInfoBtn.classList.add('active');
      orderHistoryBtn.classList.remove('active');
      profileInfo.classList.add('active');
      orderHistory.classList.remove('active');
    });

    orderHistoryBtn.addEventListener('click', () => {
      orderHistoryBtn.classList.add('active');
      profileInfoBtn.classList.remove('active');
      orderHistory.classList.add('active');
      profileInfo.classList.remove('active');
    });
    
    
    //go to checkout page
function Location3(){
    window.location="LogoutServlet"
}

  </script>
        
        <%@include file="components/common_modals.jsp" %>
    </body>
</html>
