namespace GRV.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Incidencias : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AlquilerCoches",
                c => new
                    {
                        AlquilerCocheID = c.Int(nullable: false, identity: true),
                        ComaniaAlquiler = c.String(),
                        DireccionRecogida = c.String(),
                        TipoCoche = c.String(),
                        NPlazas = c.Int(nullable: false),
                        NCoches = c.Int(nullable: false),
                        OfreceSeguro = c.Boolean(nullable: false),
                        SillaNinio = c.Int(nullable: false),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.AlquilerCocheID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.BilleteAvions",
                c => new
                    {
                        BilleteAvionID = c.Int(nullable: false, identity: true),
                        ComaniaAerea = c.String(),
                        AeropuertoOrigen = c.String(),
                        AeropuertoDestino = c.String(),
                        EsLowCost = c.Boolean(nullable: false),
                        NPlazas = c.Int(nullable: false),
                        Fecha = c.String(),
                        HoraSalida = c.String(),
                        HoraLlegada = c.String(),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.BilleteAvionID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.BilleteTrens",
                c => new
                    {
                        BilleteTrenID = c.Int(nullable: false, identity: true),
                        Compania = c.Int(nullable: false),
                        Tipo = c.Int(nullable: false),
                        EstacionOrigen = c.String(),
                        EstacionDestino = c.String(),
                        EsTrenCafetería = c.Boolean(nullable: false),
                        NPlazas = c.Int(nullable: false),
                        Fecha = c.String(),
                        HoraSalida = c.String(),
                        HoraLlegada = c.String(),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.BilleteTrenID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Campings",
                c => new
                    {
                        CampingID = c.Int(nullable: false, identity: true),
                        Direccion = c.String(),
                        Nombre = c.String(),
                        PrecioPorNoche = c.Double(nullable: false),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.CampingID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.CasaRurals",
                c => new
                    {
                        CasaRuralID = c.Int(nullable: false, identity: true),
                        Direccion = c.String(),
                        Nombre = c.String(),
                        PrecioPorNoche = c.Double(nullable: false),
                        UserID = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.CasaRuralID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserID)
                .Index(t => t.UserID);
            
            CreateTable(
                "dbo.Hotels",
                c => new
                    {
                        HotelID = c.Int(nullable: false, identity: true),
                        Direccion = c.String(),
                        Nombre = c.String(),
                        PrecioPorNoche = c.Double(nullable: false),
                        UserId = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.HotelID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Incidencias",
                c => new
                    {
                        IncidenciasID = c.Int(nullable: false, identity: true),
                        Descripcion = c.String(),
                        Nombre = c.String(),
                        EscalaDeGravedad = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IncidenciasID);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.Hotels", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.CasaRurals", "UserID", "dbo.AspNetUsers");
            DropForeignKey("dbo.Campings", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.BilleteTrens", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.BilleteAvions", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AlquilerCoches", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropIndex("dbo.Hotels", new[] { "UserId" });
            DropIndex("dbo.CasaRurals", new[] { "UserID" });
            DropIndex("dbo.Campings", new[] { "UserId" });
            DropIndex("dbo.BilleteTrens", new[] { "UserId" });
            DropIndex("dbo.BilleteAvions", new[] { "UserId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.AlquilerCoches", new[] { "UserId" });
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.Incidencias");
            DropTable("dbo.Hotels");
            DropTable("dbo.CasaRurals");
            DropTable("dbo.Campings");
            DropTable("dbo.BilleteTrens");
            DropTable("dbo.BilleteAvions");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.AlquilerCoches");
        }
    }
}
