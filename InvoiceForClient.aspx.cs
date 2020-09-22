using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Group_MaskInc_FrontEnd.GroupServiceReference;

namespace Group_MaskInc_FrontEnd
{
    public partial class InvoiceForClient : System.Web.UI.Page
    {
        //Service reference to use service functions 
        GroupServiceClient SR = new GroupServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Get the logged in user's id 
            int client_ID = Convert.ToInt32(Session["LoggedInUser"]);

            //If user is logged in 
            if (client_ID > 0)
            {
                //Get the client's invoice/s
                dynamic invoices = SR.GetInvoicebyclient(client_ID);
                //Get the client's delivery detail/s
                dynamic delivery = SR.GetDeliveriesForClient(client_ID);

                string order_date = "";
                string order_total = "";
                string order_status = "";
                string order_tax = "";
                string order_shipping = "";
                string order_discount = "";
                string order_quantity = "";
                string delivery_name = "";

                //Get most recent order's details 
                foreach (Order_Table i in invoices)
                {
                    order_date = Convert.ToString(i.Order_date);
                    order_total = Convert.ToString(i.Order_Total);
                    order_status = Convert.ToString(i.Order_Status);
                    order_tax = Convert.ToString(i.Order_Tax);
                    order_shipping = Convert.ToString(i.Order_Shipping);
                    order_discount = Convert.ToString(i.Order_Discount);
                    order_quantity = Convert.ToString(i.Order_Quantity);
                    delivery_name = delivery.Name;

                    //Display info for most recent order to client.
                    clientOrder_date.Value = order_date;
                    clientOrder_Status.Value = order_status;
                    clientOrder_Total.Value = order_total;
                    clientOrder_Tax.Value = order_tax;
                    clientOrder_Discount.Value = order_discount;
                    clientOrder_Shipping.Value = order_shipping;
                    clientOrder_Quantity.Value = order_quantity;
                    clientOrder_Delivery.Value = delivery_name;
                }
            }
            //If user is not logged in 
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        //Button clicks redirects to home page 
        protected void GoBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}