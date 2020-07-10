using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Vidly.Controllers
{
    public class CustomersController : Controller
    {
        // GET: Customers
       // private ModelContext _context = new ModelContext();
        // GET: Customer
        protected override void Dispose(bool disposing)
        {
            //_context.Dispose();
        }
        public ActionResult Index()
        {
            //var customers = _context.Customers.Include(c => c.MembershipType).ToList();
            //return View(customers);
            return View();
        }
        public ActionResult Details(int id)
        {
            //var customers = _context.Customers.Include(c => c.MembershipType).ToList();
            //return View(customers.Find(c => c.Id == id));
            return View();
        }
    }
}