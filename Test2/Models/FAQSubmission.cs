using System.ComponentModel.DataAnnotations;

namespace Test2.Models
{
    public class FAQSubmission
    {
        //Model class for faq submissions
        //ID is automatic somehow
        //email and question are required, answer is not as that is not filled out when user creates question
        public int Id { get; set; }
        [Required(ErrorMessage = "Email is required.")]
        [EmailAddress(ErrorMessage = "Invalid Email Address.")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please enter your question.")]
        public string Question { get; set; }


        public string? Answer { get; set; }

    }
}
