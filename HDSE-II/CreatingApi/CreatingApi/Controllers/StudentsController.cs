using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CreatingApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : ControllerBase
    {
        public List<string> data = new List<string>()
        {
            "Ali",
            "Hamza",
            "Muneeb",
            "Iqbal",
            "Shahzaib"
        };

        [HttpGet]
        public List<string> GetStd()
        {
            return data;
        }

        [HttpGet("{id}")]
        public string GetOneStd(int id)
        {
            return data.ElementAt(id);
        }
    }
}
