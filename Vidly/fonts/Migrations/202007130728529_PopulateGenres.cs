namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulateGenres : DbMigration
    {
        public override void Up()
        {
            var id = "\"Id\"";
            var dbName = "\"Genres\"";
            var name = "\"Name\"";
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (1, 'Action')");
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (2, 'Comedy')");
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (3, 'Drama')");
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (4, 'Romance')");
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (5, 'Thriller')");
            Sql($"INSERT INTO {dbName} ({id}, {name}) VALUES (6, 'Family')");
        }
        
        public override void Down()
        {
        }
    }
}
