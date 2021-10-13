using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project
{
    class Module
    {
        private string moduleName;
        private string moduleCode;
        private string moduleDecription;

        public string ModuleName { get => moduleName; set => moduleName = value; }
        public string ModuleCode { get => moduleCode; set => moduleCode = value; }
        public string ModuleDecription { get => moduleDecription; set => moduleDecription = value; }

        public Module(string moduleName, string moduleCode, string moduleDecription)
        {
            this.moduleCode = moduleCode;
            this.moduleName = moduleName;
            this.moduleDecription = moduleDecription;
        }
    }
}
