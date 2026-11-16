using System.ComponentModel.DataAnnotations;

namespace musicasWEB.API.DTO
{
    public class LoginDTO
    {
        [Required, EmailAddress]
        public string Email { get; set; } = string.Empty;

        [Required]
        public string Senha { get; set; } = string.Empty;
    }
}
