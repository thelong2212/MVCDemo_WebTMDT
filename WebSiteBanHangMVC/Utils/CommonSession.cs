﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSiteBanHangMVC.Common
{
    public class CommonSession
    {
        public static string USER_SESSION = "USER_SESSION";
        public static string SESSION_CREDENTIALS = "SESSION_CREDENTIALS";
        public static string CART_SESSION = "CART_SESSION";

        public static string CurrentCulture { set; get; }
    }
}