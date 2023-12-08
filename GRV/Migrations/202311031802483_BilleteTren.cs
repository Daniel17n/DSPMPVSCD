namespace GRV.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BilleteTren : DbMigration
    {
        public override void Up()
        {
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
                    })
                .PrimaryKey(t => t.BilleteTrenID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.BilleteTrens");
        }
    }
}
