using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Test2.Migrations.Test2
{
    /// <inheritdoc />
    public partial class mssqllocal_migration_882 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "dogPhoto",
                table: "DogList",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "dogPhoto",
                table: "DogList");
        }
    }
}
