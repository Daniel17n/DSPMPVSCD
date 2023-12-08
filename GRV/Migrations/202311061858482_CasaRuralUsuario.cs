namespace GRV.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CampingUsuario : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.CasaRurals", "UserID", c => c.String(maxLength: 128));
            CreateIndex("dbo.CasaRurals", "UserID");
            AddForeignKey("dbo.CasaRurals", "UserID", "dbo.AspNetUsers", "Id");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.CasaRurals", "UserID", "dbo.AspNetUsers");
            DropIndex("dbo.CasaRurals", new[] { "UserID" });
            DropColumn("dbo.CasaRurals", "UserID");
        }
    }
}
