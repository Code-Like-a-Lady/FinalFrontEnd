<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Group_MaskInc_FrontEnd.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- Cart Page Section Begin -->
        <div class="small-container">
            <div class ="cart-page">
            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
                <tr>
                    <td>
                        <div class="cart-info">
                            <img src="assets\img\products\Product_1.jpg" />
                            <div>
                                <p>Nano Mask</p>
                                <small>Price: R100.00</small>
                                <a href="#">Remove</a>
                            </div>
                        </div>
                    </td>
                     <td><input type="number" value="1" /></td>
                     <td>R100</td>
                </tr>
            </table>
</div>
       </div>
    <!-- Cart Page Section End -->
</asp:Content>
