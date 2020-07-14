using System;
using System.ComponentModel.DataAnnotations;

namespace Vidly.Models
{
    public class Movie
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        [Required]
        public DateTime ReleaseDate { get; set; }
        [Required]
        public DateTime AddDate { get; set; }
        [Required]
        public short NumberInStock { get; set; }
        [Required]
        public Genre Genre { get; set; }
        [Required]
        public byte GenreId { get; set; }
    }
}