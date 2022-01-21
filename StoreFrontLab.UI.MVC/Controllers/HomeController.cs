﻿using System;
using System.Net;
using System.Net.Mail;
using System.Web.Mvc;

using StoreFrontLab.UI.MVC.Models;//added

namespace StoreFrontLab.UI.MVC.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        //[Authorize]
        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        [HttpGet]
        public ActionResult Shop()
        {
            ViewBag.Message = "Your shop page.";

            return View();
        }

        [HttpGet]
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public ActionResult Contact(ContactViewModel cvm)
        {
            if (!ModelState.IsValid)
            {
                //send the cvm back to the form with completed inputs
                return View();

            }
            //build the message
            string message = $"You have received an email from {cvm.Name} with a subject of {cvm.Subject}. Please respond to {cvm.Email} with your response to the following message: <br/>{cvm.Message}";
            //MailMessage - What sends the email
            MailMessage mm = new MailMessage("admin@patrick-stephen.com", "patrickstephenit@yahoo.com", cvm.Subject, message);

            //MailMessage properties
            //Allow HTML in the email
            mm.IsBodyHtml = true;
            mm.Priority = MailPriority.High;
            //Respond to the sender, and not our website
            mm.ReplyToList.Add(cvm.Email);

            //SmtpClient - This is the info from the host that allows this to be sent
            SmtpClient client = new SmtpClient("mail.patrick-stephen.com");
            client.Port = 8889; //alt port number is 8889 if 25 doesn't work
            client.EnableSsl = false;

            //Client Credentials
            client.Credentials = new NetworkCredential("admin@patrick-stephen.com", "P@ssw0rd");

            //Try to send the email
            try
            {
                //attempt to send
                client.Send(mm);
            }
            catch (Exception ex)
            {
                ViewBag.CustomerMessage = $"We're sorry your request could not be completed at this time. Please try again later. Error Message:{ex.Message}<br/>{ex.StackTrace}";
                return View(cvm);
            }

            return View("EmailConfirmation", cvm);
        }
    }
}
