namespace Vidly.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SeedUsers : DbMigration
    {
        public override void Up()
        {
            Sql(@"INSERT INTO public.""AspNetUsers"" (""Id"", ""Email"", ""EmailConfirmed"", ""PasswordHash"", ""SecurityStamp"",
""PhoneNumber"", ""PhoneNumberConfirmed"", ""TwoFactorEnabled"", ""LockoutEndDateUtc"", ""LockoutEnabled"", ""AccessFailedCount"", ""UserName"") 
VALUES('18e32c3b-e6c1-4c4e-a1a5-0c803f6b4238', 'guest@vidly.com', false, 'AJkYoh7fFkM9lVtoJdBnS7vOhtESqc21TtC2JHaE8g5r32TBwDFeC6/IOPgSGh2FJQ==', 
'b63c0b1a-497b-45ca-b51a-a1052e32482b', null, false, false, null, true, 0, 'guest@vidly.com');

INSERT INTO ""public"".""AspNetUsers"" (""Id"", ""Email"", ""EmailConfirmed"", ""PasswordHash"", ""SecurityStamp"",
""PhoneNumber"", ""PhoneNumberConfirmed"", ""TwoFactorEnabled"", ""LockoutEndDateUtc"", ""LockoutEnabled"", ""AccessFailedCount"", ""UserName"") 
VALUES('0f2fe272-9ff3-4cf3-8fd5-bb5257e7fffa', 'admin@vidly.com', false, 'AINkU1Vb4veHPQX2VCx2dYQ8N44OgDS59kjdjiKSHNH+vyx90Qi20VP7uqPy2HWksA==',
'aaec5730-808f-4905-af2a-ef2c521eb079', null, false, false, null, true, 0, 'admin@vidly.com');

INSERT INTO ""public"".""AspNetRoles"" (""Id"", ""Name"") VALUES('f3d4ed54-3267-460a-be61-b931b6a3908d', 'CanManageMovies');

INSERT INTO ""public"".""AspNetUserRoles"" (""UserId"", ""RoleId"") VALUES('0f2fe272-9ff3-4cf3-8fd5-bb5257e7fffa', 'f3d4ed54-3267-460a-be61-b931b6a3908d');
");   
        }
        
        public override void Down()
        {
        }
    }
}
