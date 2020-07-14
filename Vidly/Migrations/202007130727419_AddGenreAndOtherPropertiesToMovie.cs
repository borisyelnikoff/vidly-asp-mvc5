namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddGenreAndOtherPropertiesToMovie : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "public.Genres",
                c => new
                    {
                        Id = c.Short(nullable: false),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("public.Movies", "ReleaseDate", c => c.DateTime(nullable: false));
            AddColumn("public.Movies", "AddDate", c => c.DateTime(nullable: false));
            AddColumn("public.Movies", "NumberInStock", c => c.Short(nullable: false));
            AddColumn("public.Movies", "GenreId", c => c.Short(nullable: false));
            AlterColumn("public.Movies", "Name", c => c.String(nullable: false));
            CreateIndex("public.Movies", "GenreId");
            AddForeignKey("public.Movies", "GenreId", "public.Genres", "Id", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("public.Movies", "GenreId", "public.Genres");
            DropIndex("public.Movies", new[] { "GenreId" });
            AlterColumn("public.Movies", "Name", c => c.String());
            DropColumn("public.Movies", "GenreId");
            DropColumn("public.Movies", "NumberInStock");
            DropColumn("public.Movies", "AddDate");
            DropColumn("public.Movies", "ReleaseDate");
            DropTable("public.Genres");
        }
    }
}
