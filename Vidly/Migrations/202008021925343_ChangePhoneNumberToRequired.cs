namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ChangePhoneNumberToRequired : DbMigration
    {
        public override void Up()
        {
            Sql(@"UPDATE public.""AspNetUsers"" SET ""PhoneNumber"" = ''");
            AlterColumn("public.AspNetUsers", "PhoneNumber", c => c.String(nullable: false, maxLength: 50, defaultValue: ""));
        }
        
        public override void Down()
        {
            AlterColumn("public.AspNetUsers", "PhoneNumber", c => c.String());
        }
    }
}
