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
                Display += "<tr><td class='product-col'><img src ='" + p.Image + "'alt=''>";
                Display += " <div class='p-title'><h5>" + p.Name + "</h5></div></td>";
                Display += "<td class='price-col'>R" + Math.Round(p.Unit_Price, 2) + "</td><td class='quantity-col'><div class='pro-qty'>";
                Display += "<input type = 'text' value='" + CartItem.Quantity + "'> </div></td> ";
                Display += "<td class='total'>R" + Math.Round(p.Unit_Price * CartItem.Quantity, 2);
                Display += "</td><td class='product-close'onclick='btn_RemoveProduct_Click('"+p.Product_Id+"')'>x</td></tr>";

            }

            CartItems.InnerHtml = Display;

            String SummaryDisplay = " ";
            SummaryDisplay += " <tr><td class='total'>R0</td><td class='tax'>R0</td><td class='shipping'>R0</td><td class='total-cart-p'>R0</td></tr>";
            Summaries.InnerHtml = SummaryDisplay;
                                                   
                                        
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