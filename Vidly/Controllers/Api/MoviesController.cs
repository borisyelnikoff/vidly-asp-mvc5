using AutoMapper;
using System;
using System.Data.Entity;
using System.Linq;
using System.Web.Http;
using Vidly.Dtos;
using Vidly.Models;

namespace Vidly.Controllers.Api
{
    public class MoviesController : ApiController
    {
        private readonly AppDbContext _context = new AppDbContext();
        public IHttpActionResult GetMovies()
        {
            var movies = _context.Movies
                .Include(m => m.Genre)
                .ToList()
                .Select(Mapper.Map<Movie, MovieDto>);
            return Ok(movies);
        }

        public IHttpActionResult GetMovie(int id)
        {
            var movie = _context.Movies.SingleOrDefault(m => m.Id == id);
            if (movie == null)
                return BadRequest();

            return Ok(Mapper.Map<Movie, MovieDto>(movie));
        }

        [HttpPost]
        public IHttpActionResult AddMovie(MovieDto movieDto)
        {
            if (movieDto == null)
                return BadRequest();

            var movie = Mapper.Map<MovieDto, Movie>(movieDto);
            _context.Movies.Add(movie);
            _context.SaveChanges();

            movieDto.Id = movie.Id;
            return Created(new Uri(Request.RequestUri + "/" + movie.Id), movieDto);
        }

        [HttpPut]
        public IHttpActionResult UpdateMovie(int id, MovieDto movieDto)
        {
            var movieInDb = _context.Movies.SingleOrDefault(m => m.Id == id);
            if (movieInDb == null)
                return NotFound();

            Mapper.Map(movieDto, movieInDb);
            _context.SaveChanges();

            movieDto.Id = id;
            return Ok(movieDto);
        }

        [HttpDelete]
        public IHttpActionResult DeleteMovie(int id)
        {
            var movieInDb = _context.Movies.SingleOrDefault(m => m.Id == id);
            if (movieInDb == null)
                return NotFound();

            _context.Movies.Remove(movieInDb);
            _context.SaveChanges();

            return Ok(id);
        }

        protected override void Dispose(bool disposing)
        {
            _context.Dispose();
        }
    }
}
