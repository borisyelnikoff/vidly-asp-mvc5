namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddRental : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "public.Rentals",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        DateRented = c.DateTime(nullable: false),
                        DateReturned = c.DateTime(),
                        Customer_Id = c.Int(nullable: false),
                        MovieId_Id = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("public.Customers", t => t.Customer_Id, cascadeDelete: true)
                .ForeignKey("public.Movies", t => t.MovieId_Id, cascadeDelete: true)
                .Index(t => t.Customer_Id)
                .Index(t => t.MovieId_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("public.Rentals", "MovieId_Id", "public.Movies");
            DropForeignKey("public.Rentals", "Customer_Id", "public.Customers");
            DropIndex("public.Rentals", new[] { "MovieId_Id" });
            DropIndex("public.Rentals", new[] { "Customer_Id" });
            DropTable("public.Rentals");
        }
    }
}
