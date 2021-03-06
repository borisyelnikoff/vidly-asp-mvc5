namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddDrivingLicenseToApplicationUser : DbMigration
    {
        public override void Up()
        {
            AddColumn("public.AspNetUsers", "DrivingLicense", c => c.String(nullable: false, maxLength: 255, defaultValue: ""));
        }
        
        public override void Down()
        {
            DropColumn("public.AspNetUsers", "DrivingLicense");
        }
    }
}
