namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PopulateMembershipTypes : DbMigration
    {
        public override void Up()
        {
            var id = "\"Id\"";
            var dbName = "\"MembershipTypes\"";
            var name = "\"Name\"";
            var signUpFee = "\"SignUpFee\"";
            var duration = "\"DurationInMonths\"";
            var discount = "\"DiscountRate\"";
            Sql($"INSERT INTO {dbName} ({id}, {name}, {signUpFee}, {duration}, {discount}) VALUES (1, 'Pay As You Go', 0, 0, 0)");
            Sql($"INSERT INTO {dbName} ({id}, {name}, {signUpFee}, {duration}, {discount}) VALUES (2, 'Monthly', 30, 1, 10)");
            Sql($"INSERT INTO {dbName} ({id}, {name}, {signUpFee}, {duration}, {discount}) VALUES (3, 'Quarterly', 90, 3, 15)");
            Sql($"INSERT INTO {dbName} ({id}, {name}, {signUpFee}, {duration}, {discount}) VALUES (4, 'Monthly', 300, 12, 10)");
        }
        
        public override void Down()
        {
        }
    }
}
