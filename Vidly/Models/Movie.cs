using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Vidly.Models
{
    public class Movie
    {
        //[Required]
        public int Id { get; set; }
        //[Required]
        public string Name { get; set; }
       /* [Required]
        public DateTime ReleaseDate { get; set; }
        [Required]
        public DateTime AddDate { get; set; }
        [Required]
        public short NumberInStock { get; set; }*/
    }
}