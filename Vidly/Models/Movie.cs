using System;
using System.ComponentModel.DataAnnotations;

namespace Vidly.Models
{
    public class Movie
    {
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Release Date")]
        public DateTime ReleaseDate { get; set; }

        [Required]
        public DateTime AddDate { get; set; }

        [Required]
        [Display(Name = "Number in Stock")]
        [Range(1, 20)]
        public short NumberInStock { get; set; }

        public short NumberAvailable { get; set; }

        public Genre Genre { get; set; }

        [Required (ErrorMessage = "Genre is required")]
        [Display(Name = "Genre")]
        public byte GenreId { get; set; }
    }
}