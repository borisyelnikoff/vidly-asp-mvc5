namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AlterMembershipTypeToYearly : DbMigration
    {
        public override void Up()
        {
            Sql("UPDATE \"MembershipTypes\" SET \"Name\" = 'Yearly' WHERE \"Id\" = 4");
        }
        
        public override void Down()
        {
        }
    }
}
