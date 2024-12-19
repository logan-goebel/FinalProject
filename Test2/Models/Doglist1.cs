using System.ComponentModel.DataAnnotations;

namespace Test2.Models
{
    public class DogList
    {
        public int Id { get; set; }

        public string? dogPhoto { get; set; }
        public string? DogName { get; set; }

        public int DogAge { get; set; }
        public string? DogDescription { get; set; }
        
        public string? DogBreed { get; set; }
    }
}
