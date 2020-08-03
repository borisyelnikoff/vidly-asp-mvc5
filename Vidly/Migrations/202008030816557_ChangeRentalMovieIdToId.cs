namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangeRentalMovieIdToId : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "public.Rentals", name: "MovieId_Id", newName: "Movie_Id");
            RenameIndex(table: "public.Rentals", name: "IX_MovieId_Id", newName: "IX_Movie_Id");
        }
        
        public override void Down()
        {
            RenameIndex(table: "public.Rentals", name: "IX_Movie_Id", newName: "IX_MovieId_Id");
            RenameColumn(table: "public.Rentals", name: "Movie_Id", newName: "MovieId_Id");
        }
    }
}
