<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Payment<span>.</span></h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Cart Total Page Begin -->
    <section class="cart-total-page spad">
        <div class="container">
            <form action="#" class="checkout-form">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Your Payment Information</h3>
                    </div>

                      <!--Card Holder Name  -->
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">CardHolder*</p>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" required placeholder="CardHolder Name"
                                     oninvalid="this.setCustomValidity('Card Holder Name is Required')"
                                            oninput="this.setCustomValidity('')" />
                            </div>
                        </div>
                      <!-- Card Number-->
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Card Number*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" required placeholder="Card Number" title="16 Digit Card Number(Located on the front of your card)" pattern="[0-9]{16}">
                            </div>
                        </div>
                         <!--Cvv + Date-->
                  <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">CVV*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" required placeholder="CVV" title="3 Digits(Located on the back of your card next to your signature)" pattern="[0-9]{3}">
                            </div>
                        </div>
                         <!-- Expiry Date -->
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">Expiry Date*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" required placeholder="MM/YY" title="MM/YY" pattern="(0[1-9]|1[0-2])/([0-9]{2})">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="order-table">
                            <div class="cart-item">
                                <span>Price(Excl. Tax)</span>
                                <p>R0</p>
                            </div>
                            <div class="cart-item">
                                <span>Quantity</span>
                                <p>1</p>
                            </div>
                            <div class="cart-item">
                                <span>Tax</span>
                                <p>R0</p>
                            </div>
                            <div class="cart-item">
                                <span>Shipping</span>
                                <p>R0</p>
                            </div>
                            <div class="cart-item">
                                <span>Discount</span>
                                <p>-R0</p>
                            </div>
                            <div class="cart-total">
                                <span>Total</span>
                                <p>R0</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="payment-method">
                            <div style="text-align:center"><h3>Thank You for Shopping with us </h3></div>
                            
                            <button type="submit" onclick="location.href='Home.aspx'">Place your order</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Cart Total Page End -->

</asp:Content>
