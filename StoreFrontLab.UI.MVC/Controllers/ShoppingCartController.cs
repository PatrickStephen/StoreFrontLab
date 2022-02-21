using StoreFrontLab.UI.MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StoreFrontLab.UI.MVC.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult Index()
        {
            //pull session based shopping cart into a local variable that we can pass to the view
            var shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            if (shoppingCart == null || shoppingCart.Count == 0)
            {
                //the user has either not put anything in their cart, or removed it all, or session expired
                //set cart to an empty object. We can still send this to the view, unlike null.
                //CHANGE SESSION LENGTH IN WEB CONFIG
                shoppingCart = new Dictionary<int, CartItemViewModel>();

                ViewBag.Message = "There are no items in your cart.";
            }
            else
            {
                ViewBag.Message = null; //explicityly clearing out the ViewBag variable
            }

            return View(shoppingCart);
        }

        //*************************************SHOPPING CART STEP 6 *******************************************************
        public ActionResult RemoveFromCart(int id)
        {
            //get the shopping cart out of the session variable and into a local variable
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            //remove the item
            shoppingCart.Remove(id);

            //update Session
            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }

        //*************************************SHOPPING CART STEP 7 *******************************************************
        public ActionResult UpdateCart(int itemID, int qty)
        {
            //get the shopping cart out of the session variable and into a local variable
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            //target the correct item using bookID and update its qty
            shoppingCart[itemID].Qty = qty;

            //update Session
            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }
    }
}