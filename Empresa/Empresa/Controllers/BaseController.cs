using Empresa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Empresa.Controllers
{
    public class BaseController
    {
        static protected BaseDadosContainer contexto = new BaseDadosContainer();
    }
}