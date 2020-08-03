using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Vidly.Dtos;

namespace Vidly.Controllers.Api
{
    public class RentalsController : ApiController
    {
        public IHttpActionResult GetRentals()
        {
            return Ok();
        }

        [HttpPost]
        public IHttpActionResult CreateNewRentals(NewRentalDto newRental)
        {
            return Created(Request.RequestUri, newRental);
        }
    }
}
