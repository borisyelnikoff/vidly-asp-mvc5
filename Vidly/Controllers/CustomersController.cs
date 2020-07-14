using System.Linq;
using System.Web.Mvc;
using Vidly.Models;
using System.Data.Entity;
using Antlr.Runtime.Misc;
using System.Data.Entity.Infrastructure.MappingViews;

namespace Vidly.Controllers
{
    public class CustomersController : Controller
    {
        private AppDbContext _context = new AppDbContext();
        // GET: Customer
        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
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
        public ActionResult Edit(int id)
        {
            var customer = _context.Customers.SingleOrDefault(c => c.Id == id);
            return View(customer);
        }
        public ActionResult New()
        {
            var membershipTypes = _context.MembershipTypes.ToList();
            var newCustomerViewModel = new NewCustomerViewModel
            {
                MembershipTypes = membershipTypes
            };
            return View(newCustomerViewModel);
        }
        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            _context.Customers.Add(customer);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}