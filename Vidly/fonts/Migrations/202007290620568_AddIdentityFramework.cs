namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddIdentityFramework : DbMigration
    {
        public override void Up()
        {
            DropColumn("public.AspNetRoles", "Discriminator");
        }
        
        public override void Down()
        {
            AddColumn("public.AspNetRoles", "Discriminator", c => c.String(nullable: false, maxLength: 128));
        }
    }
}
