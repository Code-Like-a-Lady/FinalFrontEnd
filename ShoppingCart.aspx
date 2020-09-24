<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="cart-page">
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th class="product-h">Product</th>
                            <th>Price</th>
                            <th class="quan">Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody  runat="server" id="CartItems">
                    </tbody>
                </table>
            </div>
            <div class="cart-btn">
                <div class="row">
                    <div class="col-lg-6">
                 <h4>Order more than 5000 Items for a 5% Discount</h4>
                            <div class="row"> &nbsp </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1 text-left text-lg-right">
                        <div class="site-btn clear-btn" onclick="GetItems()">Clear Cart</div>
                        <a href="Home.aspx"class="site-btn update-btn">Add to Cart</a>
                       
                    </div>
                </div>
            </div>
        </div>
        <div class="shopping-method">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shipping-info">
                            <h5>Choose a Shipping</h5>
                            <div class="choose-shipping" runat="server" id="Delivery_Items">
                            </div>
                        </div>
                              <h4>Free Shipping for more than 10000 Items</h4>
                            <div class="row"> &nbsp </div>
                        <div class="total-info">
                            <div class="total-table" >
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Total (Tax Exclusive)</th>
                                            <th>Tax</th>
                                            <th>Shipping</th>
                                            <th>Discount</th>
                                            <th class="total-cart">Total Cart</th>
                                        </tr>
                                    </thead>
                                    <tbody runat="server" id="Summaries">
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-right" runat="server" id="Checkout">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart Page Section End -->
        <script>
            function GetItems() {
                document.getElementById(CartItems)
        </script>
</asp:Content>
