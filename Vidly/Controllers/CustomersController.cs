using System.Linq;
using System.Web.Mvc;
using Vidly.Models;
using System.Data.Entity;

namespace Vidly.Controllers
{
    public class CustomersController : Controller
    {
        private AppDbContext _context = new AppDbContext();
        // GET: Customer
        protected override void Dispose(bool disposing)
        {
            //_context.Dispose();
        }
        public ActionResult Index()
        {
            var customers = _context.Customers.Include(c => c.MembershipType).ToList();
            return View(customers);
        }
        public ActionResult Details(int id)
        {
            var customers = _context.Customers.Include(c => c.MembershipType).ToList();
            return View(customers.Find(c => c.Id == id));
        }
    }
}