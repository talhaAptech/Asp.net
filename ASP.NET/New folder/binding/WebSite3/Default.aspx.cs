﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var products = new List<Product>();
        products.Add(new Product() { ProductID = 1, Name = "Bike", Price = 150.00 });
        products.Add(new Product() { ProductID = 2, Name = "Helmet", Price = 19.99 });
        products.Add(new Product() { ProductID = 3, Name = "Tire", Price = 10.00 });

        ProductList.DataSource = products;
        ProductList.DataBind();

    }
}