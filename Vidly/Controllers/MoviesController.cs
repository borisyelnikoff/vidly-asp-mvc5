using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Vidly.Models;
using System.Data.Entity;

namespace Vidly.Controllers
{
    public class MoviesController : Controller
    {
        private readonly AppDbContext _context = new AppDbContext();
        // GET: Movies
        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }
        public ActionResult Random()
        {
            return View();
        }
        public ActionResult Index()
        {
            return View(_context.Movies.Include(m => m.Genre).ToList());
        }
        public ActionResult Details(int id)
        {
            var movies = _context.Movies.Include(m => m.Genre).ToList();
            return View(movies.Find(m => m.Id == id));
        }
    }
}