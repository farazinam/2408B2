using CreatingAPIWithDB.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace CreatingAPIWithDB.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly ApiCreationContext apiC;

        public ProductsController(ApiCreationContext _apiC)
        {
            apiC = _apiC;
        }


        //	Get – Fetching Data
        [HttpGet]
        public IActionResult GetData()
        {
            return Ok(apiC.Products.ToList());
        }

        //	Get – Fetching Specific Data by Id
        [HttpGet("{id}")]
        public IActionResult GetData(int id)
        {
            return Ok(apiC.Products.Find(id));
        }

        [HttpPost]
        public IActionResult CreateData(Product p)
        {
            apiC.Products.Add(p);
            apiC.SaveChanges();
            return Ok("Inserted Successfully");
        }

        [HttpDelete]
        public IActionResult DeleteData(int id)
        {
            var foundId = apiC.Products.Find(id);
            apiC.Products.Remove(foundId);
            apiC.SaveChanges();
            return Ok("Inserted Successfully");
        }

        [HttpPut("{id}")]
        public IActionResult UpdateData(int id, Product p)
        {
            var foundId = apiC.Products.Find(id);
            foundId.Name = p.Name;
            foundId.Price = p.Price;
            foundId.Description = p.Description;
            apiC.Products.Update(foundId);
            apiC.SaveChanges();
            return Ok("Updated Successfully");
        }

        [HttpGet("Search/{query}")]
        public IActionResult SearchProduct(string query)
        {
            // For partial match search
            var products = apiC.Products.Where(o => o.Name.Contains(query)).ToList();
            return Ok(products);
        }


    }
}
