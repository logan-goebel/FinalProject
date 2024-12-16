using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Test2.Migrations.Test2
{
    /// <inheritdoc />
    public partial class mssqllocal_migration_816 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "DogList",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DogName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DogAge = table.Column<int>(type: "int", nullable: false),
                    DogDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DogBreed = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DogList", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DogList");
        }
    }
}
