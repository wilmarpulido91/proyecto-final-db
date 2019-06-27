using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using WAejemplo.DAL;
using WAejemplo.Models;

namespace WAejemplo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmpleadosController : ControllerBase
    {
        private readonly IConfiguration configuration;

        public EmpleadosController(IConfiguration config)
        {
            this.configuration = config;
        }

        [HttpGet]
        public ActionResult<IEnumerable<Empleado>> Get()
        {
            DALEmpleado dp = new DALEmpleado(configuration);
            return Ok(dp.getEmpleados());
        }

        [HttpPost]
        [Route("add")]
        public void addEmpleado([FromBody] Empleado empleado)
        {
            DALEmpleado dp = new DALEmpleado(configuration);
            dp.addEmpleado(empleado);
        }
    }
}