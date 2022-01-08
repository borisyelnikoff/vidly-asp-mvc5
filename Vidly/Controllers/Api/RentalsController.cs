using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Vidly.Dtos;
using Vidly.Migrations;
using Vidly.Models;

namespace Vidly.Controllers.Api
{
    public class RentalsController : ApiController
    {
        private readonly ApplicationDbContext _context = new ApplicationDbContext();

        public IHttpActionResult GetRentals(int customerId)
        {
            if (customerId == 0)
                return BadRequest();

            return Ok(_context.Rentals.Where(r => r.Customer.Id == customerId));
        }

        [HttpPost]
        public IHttpActionResult CreateNewRentals(NewRentalDto newRental)
        {
            //Defensive programming approach
            if (newRental == null || newRental.MovieIds.Count == 0)
                return BadRequest("No movie IDs given");

            var customer = _context.Customers.SingleOrDefault(c => c.Id == newRental.CustomerId);
            //Defensive programming approach
            if (customer == null)
                return BadRequest("Customer ID not valid");

            var movies = _context.Movies.Where(m => newRental.MovieIds.Contains(m.Id)).ToList();
            //Defensive programming approach
            if (movies.Count != newRental.MovieIds.Count)
                return BadRequest("One or more movie IDs are invalid");

            foreach (var movie in movies)
            {
                if (movie.NumberAvailable == 0)
                    return BadRequest("Movie is not available");

                movie.NumberAvailable--;

                var rental = new Rental
                {
                    Customer = customer,
                    Movie = movie,
                    DateRented = DateTime.Now
                };

                _context.Rentals.Add(rental);
            }

            _context.SaveChanges();

            return Ok();
        }

        [HttpPut]
        public IHttpActionResult ReturnRental()
        {
            return Ok();
        }
    }
}
