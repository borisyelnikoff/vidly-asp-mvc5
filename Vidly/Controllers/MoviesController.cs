using System;
using System.Linq;
using System.Web.Mvc;
using Vidly.Models;
using System.Data.Entity;

namespace Vidly.Controllers
{
    public class MoviesController : Controller
    {
        private readonly ApplicationDbContext _context = new ApplicationDbContext();
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
            return View();
        }
        public ActionResult Details(int id)
        {
            var movies = _context.Movies.Include(m => m.Genre).ToList();
            return View(movies.Find(m => m.Id == id));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Save(Movie movie)
        {
            if (!ModelState.IsValid)
            {
                var movieForm = new MovieFormViewModel
                {
                    Genres = _context.Genres.ToList()
                };
                return View("MovieForm", movieForm);
            }

            if (movie.Id == 0)
            {
                movie.AddDate = DateTime.Now;
                _context.Movies.Add(movie);
            }
            else 
            {
                var movieInDb = _context.Movies.Single(m => m.Id == movie.Id);
                movieInDb.Name = movie.Name;
                movieInDb.GenreId = movie.GenreId;
                movieInDb.ReleaseDate = movie.ReleaseDate;
                movieInDb.NumberInStock = movie.NumberInStock;
            }

            _context.SaveChanges();

            return RedirectToAction("Index", "Movies");
        }

        public ActionResult Edit(int id)
        {
            var movie = _context.Movies.SingleOrDefault(m => m.Id == id);
            if (movie == null)
                return HttpNotFound();

            var movieForm = new MovieFormViewModel(movie)
            {
                Genres = _context.Genres.ToList(),
            };

            return View("MovieForm", movieForm);
        }

        public ActionResult New()
        {
            var movieForm = new MovieFormViewModel()
            {
                Genres = _context.Genres.ToList()
            };
            return View("MovieForm", movieForm);
        }

        [HttpDelete]
        public ActionResult Delete(int id)
        {
            if (id == 0)
                return HttpNotFound();

            _context.Movies.Remove(_context.Movies.Single(m => m.Id == id));
            _context.SaveChanges();
            return RedirectToAction("Index", "Movies");
        }
    }
}