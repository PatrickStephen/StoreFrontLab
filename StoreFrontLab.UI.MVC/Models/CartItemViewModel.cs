using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using StoreFrontLab.DATA.EF;
using System.ComponentModel.DataAnnotations;

namespace StoreFrontLab.UI.MVC.Models
{
    // *************************************SHOPPING CART STEP 1 *******************************************************

    //Added this viewmodel to combine domain-related info (Book Product) with other infor (int Qty)
    public class CartItemViewModel
    {
        [Range(1, int.MaxValue)]
        public int Qty { get; set; }
        public Item Product { get; set; }

        //FQ CTOR
        public CartItemViewModel(int qty, Item product)
        {
            Qty = qty;
            Product = product;
        }//end FQ CTOR
    }
     
}