namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddNumberAvailableToMovie : DbMigration
    {
        public override void Up()
        {
            AddColumn("public.Movies", "NumberAvailable", c => c.Short(nullable: true));
        }
        
        public override void Down()
        {
            DropColumn("public.Movies", "NumberAvailable");
        }
    }
}
