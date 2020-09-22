<%@ Page Title="" Language="C#" MasterPageFile="~/MaskInc.Master" AutoEventWireup="true" CodeBehind="InvoiceForClient.aspx.cs" Inherits="Group_MaskInc_FrontEnd.InvoiceForClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="ClientInvoice_Page">
        <div class="container">
            <div class="ClientInvoice_Table">
                <table>
                    <thead>
                        <tr>
                            <th class="clientInvoice">Client Invoices</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="clientOrderDate">
                            Order Placed Date:<td>
                                <input type="text" runat="server" id="clientOrder_date" readonly></td>
                        </tr>

                        <tr>
                            <td class="clientOrderStatus">
                            Order Status:<td>
                                <input type="text" runat="server" id="clientOrder_Status" readonly></td>
                        </tr>

                        <tr>
                            <td class="clientOrderTotal">
                            Order Total:<td>
                                <input type="number" runat="server" id="clientOrder_Total" readonly></td>
                        </tr>
						
						<tr>
                            <td class="clientOrderTax">
                            Order Tax:<td>
                                <input type="number" runat="server" id="clientOrder_Tax" readonly></td>
                        </tr>
						
						<tr>
                            <td class="clientOrderDiscount">
                            Order Discount Earned:<td>
                                <input type="number" runat="server" id="clientOrder_Discount" readonly></td>
                        </tr>
						
						<tr>
                            <td class="clientOrderShipping">
                            Order Shipping:<td>
                                <input type="number" runat="server" id="clientOrder_Shipping" readonly></td>
                        </tr>
						
						<tr>
                            <td class="clientOrderQuantity">
                            Order Quantity:<td>
                                <input type="number" min="50" runat="server" id="clientOrder_Quantity" readonly></td>
                        </tr>
						
						<tr>
                            <td class="clientOrderDelivery">
                            Order Delivery:<td>
                                <input type="text" runat="server" id="clientOrder_Delivery" readonly></td>
                        </tr>

                    </tbody>
                </table>

                <!--- BUTTONs: --->

                 <div class="invoice-button">
                    <div class="col-lg-5 offset-lg-1 text-left text-lg-right">
                        <div class="site-btn clear-btn" onclick="GoBack_Click">Go Back</div>
                        <a href="Home.aspx"></a>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- END CLIENT INVOICE PAGE-->
</asp:Content>
