using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        int ClientId = 9;
        GroupServiceClient SR = new GroupServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Dynamically display the delivery Options available
            string DisplayDelivery = " ";
            dynamic Deliveries = SR.GetAllDeliveries();
            int count = 0;
            foreach (Delivery d in Deliveries)
            {
                DisplayDelivery += "<div class='cs-item'><input type ='radio' name='cs' id='" + count + "'>";
                DisplayDelivery += " <label for='" + count + "'>" + d.Name + "<span> " + d.Time_Needed + "</span>";
                DisplayDelivery += "</label> </div>";
            }

            Delivery_Items.InnerHtml = DisplayDelivery;


            string Display = " ";
            //Client_ID Should be fetched for client
            dynamic products = SR.GetAllProductsInCart(ClientId);

            foreach (GroupServiceReference.Product p in products)
            {
                Cart CartItem = SR.GetCartItem(ClientId, p.Product_Id);
                SR.EditFromCart(CartItem.Client_Id, CartItem.Product_Id, CartItem.Quantity, p.Unit_Price * CartItem.Quantity);
                Display += "<tr><td class='product-col'><img src ='" + p.Image + "'alt=''>";
                Display += " <div class='p-title'><h5>" + p.Name + "</h5></div></td>";
                Display += "<td class='price-col'>R" + Math.Round(p.Unit_Price, 2) + "</td><td class='quantity-col'><div class='pro-qty'>";
                Display += "<input type = 'text' value='" + CartItem.Quantity + "'> </div></td> ";
                Display += "<td class='total'>R" + Math.Round(CartItem.Price, 2);
                Display += "</td><td class='product-close'onclick='btn_RemoveProduct_Click('"+p.Product_Id+"')'>x</td></tr>";
                CartItem = null;
            }

            CartItems.InnerHtml = Display;
            int Quantity = SR.CalculateTotalQuantity(ClientId);
            Decimal Total;
            Decimal TotalTaxIncl = SR.CalculateTotalPrice(ClientId);
            Decimal Discount = 0;
            if (Quantity>5000)
            {
                //Include the 5% Discount
                Discount= (TotalTaxIncl*5/100);
            }
    
            Total = (TotalTaxIncl * 100/115);
            Decimal Tax = (TotalTaxIncl * 15/115);
            Decimal Shipping;
            if (Quantity > 10000)
            {
                //Include Free shipping
                Shipping = 0;
            }
            else
            {
                
                Shipping= (TotalTaxIncl * 2/100);
            }
            Decimal TotalCart = Total +Tax+ Shipping-Discount;
            String SummaryDisplay = " ";
            SummaryDisplay += " <tr><td class='total'>R"+Math.Round(Total,2)+"</td><td class='tax'>R"+Math.Round(Tax,2)+"</td><td class='shipping'>R"+Math.Round(Shipping,2)+ "</td><td class='Discount'> -R" + Math.Round(Discount, 2) + "</td><td class='total-cart-p'>R" + Math.Round(TotalCart,2)+"</td></tr>";
            Summaries.InnerHtml = SummaryDisplay;

            String checkoutPage = " ";
            checkoutPage = "<a href='CheckOut.aspx' class='primary-btn chechout-btn'>Proceed to Checkout</a>";

            Checkout.InnerHtml = checkoutPage;

    }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            SR.ClearTheCart(ClientId);
        }

        protected void btn_RemoveProduct_Click(object sender, EventArgs e,int Pro_ID)
        {
            SR.RemoveFromCart(ClientId, Pro_ID);
        }
    }
}