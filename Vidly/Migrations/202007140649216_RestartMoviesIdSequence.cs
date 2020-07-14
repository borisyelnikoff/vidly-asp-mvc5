namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class RestartMoviesIdSequence : DbMigration
    {
        public override void Up()
        {
            Sql("ALTER SEQUENCE \"Movies_Id_seq\" RESTART WITH 8");
        }
        
        public override void Down()
        {
        }
    }
}
