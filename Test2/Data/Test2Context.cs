using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using AdoptionWebsiteTest.Models;

namespace Test2.Data
{
    public class Test2Context : DbContext
    {
        public Test2Context (DbContextOptions<Test2Context> options)
            : base(options)
        {
        }

        public DbSet<AdoptionWebsiteTest.Models.ContactForm> ContactForm { get; set; } = default!;
        public DbSet<AdoptionWebsiteTest.Models.Form> Form { get; set; } = default!;
    }
}
