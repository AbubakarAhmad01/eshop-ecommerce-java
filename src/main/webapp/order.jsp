<%-- 
    Document   : order
    Created on : Dec 15, 2024, 5:37:46 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order Received</title>
        
        
    <style>
    /* General Reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html, body {
      height: 100%;
      font-family: 'Arial', sans-serif;
    }

    body {
      background: #f3f4f6; /* Light Gray Background */
      display: flex;
      justify-content: center;
      align-items: center;
    }

    /* Order Card */
    .order-card {
      width: 100%;
      max-width: 700px;
      background: #ffffff;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
      overflow: hidden;
      text-align: center;
    }

    /* Header Section */
    .order-header {
      padding: 40px 20px;
      background: green; /* Purple Background */
      color: #ffffff;
    }

    .order-header .icon {
      font-size: 50px;
      margin-bottom: 20px;
    }

    .order-header h1 {
      font-size: 26px;
      margin-bottom: 10px;
      font-weight: bold;
    }

    .order-header p {
      font-size: 16px;
      opacity: 0.9;
    }

    /* Order Summary Section */
    .order-summary {
      padding: 30px 20px;
    }

    .order-summary h2 {
      font-size: 20px;
      margin-bottom: 20px;
      color: #333333;
    }

    .order-summary .summary-table {
      width: 100%;
      border-collapse: collapse;
    }

    .summary-table th,
    .summary-table td {
      padding: 12px 10px;
      text-align: left;
      font-size: 16px;
      border-bottom: 1px solid #dddddd;
    }

    .summary-table th {
      color: #666666;
    }

    .summary-table td {
      color: #333333;
    }

    /* Footer Section */
    .order-footer {
      background: #f3f4f6;
      padding: 20px;
    }

    .order-footer .actions {
      display: flex;
      justify-content: center;
      gap: 15px;
    }

    .order-footer a {
      text-decoration: none;
      padding: 12px 25px;
      font-size: 16px;
      font-weight: bold;
      border-radius: 8px;
      transition: all 0.3s ease;
    }

    .btn-shop {
      background: #1e88e5; /* Blue */
      color: #ffffff;
    }

    .btn-shop:hover {
      background: #1565c0;
    }

    .btn-track {
      background: #43a047; /* Green */
      color: #ffffff;
    }

    .btn-track:hover {
      background: #2e7d32;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
      .order-summary h2 {
        font-size: 18px;
      }

      .summary-table th, .summary-table td {
        font-size: 14px;
      }

      .order-footer a {
        font-size: 14px;
        padding: 10px 20px;
      }
    }
  </style>
</head>
<body>

<div class="order-card">
  <!-- Header -->
  <div class="order-header">
    <div class="icon">🎉</div>
    <h1>Order Received</h1>
    <p>Thank you for your purchase! Your order has been placed successfully.</p>
  </div>

  <!-- Order Summary -->
  <div class="order-summary">
    <h2>Order Details</h2>
    <table class="summary-table">
      <tr>
        <th>Order ID</th>
        <td>#12345</td>
      </tr>
      <tr>
        <th>Product</th>
        <td>Wireless Headphones</td>
      </tr>
      <tr>
        <th>Quantity</th>
        <td>1</td>
      </tr>
      <tr>
        <th>Total</th>
        <td>1500</td>
      </tr>
      <tr>
        <th>Estimated Delivery</th>
        <td>Dec 20, 2024</td>
      </tr>
    </table>
  </div>

  <!-- Footer with Buttons -->
  <div class="order-footer">
    <div class="actions">
      <a href="index.jsp" class="btn-shop">Continue Shopping</a>
      <a href="#" class="btn-track">Track Order</a>
    </div>
  </div>
</div>

</body>
</html>
