using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreFrontLab.DATA.EF;
using System.Drawing;

using StoreFrontLab.UI.MVC.Models;
using StoreFrontLab.UI.MVC.Utilities;

namespace StoreFrontLab.UI.MVC.Controllers
{
    public class ItemsController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        // GET: Items
        public ActionResult Index()
        {
            var items = db.Items.Include(i => i.Category).Include(i => i.Status);
            return View(items.ToList());
        }

        // GET: Items/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        //*************************************SHOPPING CART STEP 3 *******************************************************
        public ActionResult AddToCart(int qty, int itemID)
        {
            //Create an empty shell for a local (local to this method) shopping cart variable
            Dictionary<int, CartItemViewModel> shoppingCart = null;

            //Check if session-cart exists; if so, that means there were already items in the shopping cart and we
            //need to put those pre-existing items in the local shoppingCart collection we created above.
            if (Session["cart"] != null)
            {
                //session cart exists - put its items in the local shoppingCart collection so they are easier to work with
                shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];
                //This is unboxing. Session object gets cast back to its original, more specific type
                //This is explicit casting
            }
            else
            {
                //If sessing cart doesnt exist yet, we need to instantiate it. (AKA new it up)
                shoppingCart = new Dictionary<int, CartItemViewModel>();
            }

            //find the product the user is trying to add to the cart
            Item product = db.Items.Where(b => b.ItemID == itemID).FirstOrDefault();

            if (product == null)
            {
                //If a bad ID was passed to this method, kick the user back to some page to try again or we could
                //throw an error.
                return RedirectToAction("Index");
            }
            else
            {
                //if bood id IS valid, add the line-item to the cart
                CartItemViewModel item = new CartItemViewModel(qty, product);

                //put item in the local shoppingCart collection. BUT if we already have that product as
                //a cart-item, then we will update the qty only
                if (shoppingCart.ContainsKey(product.ItemID))
                {
                    shoppingCart[product.ItemID].Qty += qty;
                }
                else
                {
                    shoppingCart.Add(product.ItemID, item);
                }

                //now update the Session version of the cart so we can maintain that info between Request & Response cycles
                Session["cart"] = shoppingCart; //implicit casting (AKA boxing) (smaller to larger)
            }

            //send them to a view that shows the list of all items in the cart
            return RedirectToAction("Index", "ShoppingCart");
        }


        // GET: Items/Create
        public ActionResult Create()
        {
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryType");
            ViewBag.StatusID = new SelectList(db.Statuses, "StatusID", "StatusName");
            return View();
        }

        // POST: Items/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ItemID,ItemName,Price,StatusID,Author,CategoryID,ItemImage,Description")] Item item, HttpPostedFileBase itemImage)
        {
            if (ModelState.IsValid)
            {
                #region File Upload

                string file = "NoImage.png";

                if (itemImage != null)
                {
                    //Process the file that was uploaded by the user
                    file = itemImage.FileName;
                    string ext = file.Substring(file.LastIndexOf('.'));
                    string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };
                    //This if checks to see if the file uploaded is the right type of file
                    //EX: file extension would be included in the goodExts
                    //We will also require the file uploaded to be 4MB's or less in size. 4194304 is in KB's
                    if (goodExts.Contains(ext.ToLower()) && itemImage.ContentLength <= 4194304)
                    {
                        //create a new file name using GUID (Globally Unique Identifier)
                        file = Guid.NewGuid() + ext;

                        string savePath = Server.MapPath("~/Content/img/"); //this is where the images will be saved
                        Image convertedImage = Image.FromStream(itemImage.InputStream);
                        int maxImageSize = 500;
                        int maxThumbSize = 100;

                        ImageUtility.ResizeImage(savePath, file, convertedImage, maxImageSize, maxThumbSize);
                    }
                }
                //no matter if the user uploaded an image or not, update the PhotoUrl (BookImage) with the value of the file variable
                item.ItemImage = file;
                #endregion
                db.Items.Add(item);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryType", item.CategoryID);
            ViewBag.StatusID = new SelectList(db.Statuses, "StatusID", "StatusName", item.StatusID);
            return View(item);
        }

        // GET: Items/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryType", item.CategoryID);
            ViewBag.StatusID = new SelectList(db.Statuses, "StatusID", "StatusName", item.StatusID);
            return View(item);
        }

        // POST: Items/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ItemID,ItemName,Price,StatusID,Author,CategoryID,ItemImage,Description")] Item item, HttpPostedFileBase itemImage)
        {
            if (ModelState.IsValid)
            {
                #region File Upload

                if (itemImage != null)
                {
                    //get file name
                    string file = itemImage.FileName;

                    //get file extension
                    string ext = file.Substring(file.LastIndexOf('.'));

                    //create a list of good extensions
                    string[] goodExts = { ".jpeg", ".jpg", ".png", ".gif" };

                    if (goodExts.Contains(ext.ToLower()) && itemImage.ContentLength <= 4194304)
                    {
                        //create a new file name using GUID (Globally Unique Identifier)
                        file = Guid.NewGuid() + ext;

                        string savePath = Server.MapPath("~/Content/img/"); //this is where the images will be saved
                        Image convertedImage = Image.FromStream(itemImage.InputStream);
                        int maxImageSize = 500;
                        int maxThumbSize = 100;

                        ImageUtility.ResizeImage(savePath, file, convertedImage, maxImageSize, maxThumbSize);

                        if (item.ItemImage != null && item.ItemImage != "NoImage.png")
                        {
                            string path = Server.MapPath("~/Content/img/");
                            ImageUtility.Delete(path, item.ItemImage);
                        }

                        item.ItemImage = file; //this updates the book obj before it is saved to the db with the latest file name

                    }
                }

                #endregion
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "CategoryType", item.CategoryID);
            ViewBag.StatusID = new SelectList(db.Statuses, "StatusID", "StatusName", item.StatusID);
            return View(item);
        }

        // GET: Items/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        // POST: Items/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Item item = db.Items.Find(id);
            db.Items.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
