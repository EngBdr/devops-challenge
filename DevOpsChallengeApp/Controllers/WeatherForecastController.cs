using Microsoft.AspNetCore.Mvc;

namespace DevOpsChallengeApp.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
    [HttpGet]
    public IActionResult Get()
    {
        return Ok(new { Message = "Hello from DevOpsChallengeApp!" });
    }
}
