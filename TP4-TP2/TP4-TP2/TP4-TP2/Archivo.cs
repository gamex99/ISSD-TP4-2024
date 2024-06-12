using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_TP2
{
    public class Archivo

    {
        public string Name { get; set; }
        public string Path { get; set; }
        public Archivo(string name, string path)
        {
            Name = name;
            Path = path;
        }
    }
}