﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace truevalueauction.Pages
{
    public partial class forgot_username_or_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.GetPostBackEventReference(this, string.Empty);
            if (Page.IsPostBack)
            {
                alertForgot.Text = "<div ID=\"alert\" class=\"alert alert-success\"><div class:\"h3\"><strong> Success </strong></div>Please check your email</div>";
            }
        }
    }
}