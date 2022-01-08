namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangeNumberAvailableToNonNullable : DbMigration
    {
        public override void Up()
        {
            Sql(@"UPDATE ""public"".""Movies"" SET ""NumberAvailable"" = ""NumberInStock""");
            AlterColumn("public.Movies", "NumberAvailable", c => c.Short(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("public.Movies", "NumberAvailable", c => c.Short());
        }
    }
}
