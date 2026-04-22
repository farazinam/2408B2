using GetAPIData.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Net;
using System.Text.Json.Nodes;

namespace GetAPIData.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Index(string movietitle)
        {
            WebClient web = new WebClient();
            string url = web.DownloadString($"http://www.omdbapi.com/?t={movietitle}&apikey=6fcc40ca");
            JsonNode details = JsonNode.Parse(url);
            var t = details["Title"];
            var y = details["Year"];
            var g = details["Genre"];
            var l = details["Language"];
            var c = details["Country"];
            var poster = details["Poster"];

            ViewBag.t = t;
            ViewBag.year = y;
            ViewBag.genre = g;
            ViewBag.language = l;
            ViewBag.country = c;
            ViewBag.poster = poster;

            return View();
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}