﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using StudentManegementServer.APIResponse;
using StudentManegementServer.BUS;
using StudentManegementServer.Models.Class;

namespace StudentManegementServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClassController : ControllerBase
    {
        [HttpGet("getAll")]

        public ActionResult GetAllClass()
        {
            List<ClassInfo> classInfos = BusControls.Instance.GetAllClass();
            if (classInfos != null)
                return new JsonResult(new APIResponse<object>(classInfos));
            return new JsonResult(new APIResponse<object>(200));
        }

        [HttpPost("insertNewClass")]
        public ActionResult InsertNewClass([FromBody] ClassInfo classInfo)
        {
            if (BusControls.Instance.InsertNewClass(classInfo))
                return new JsonResult(new APIResponse<object>("Insert Success"));
            else
                return new JsonResult(new APIResponse<object>(200));
        }
        [HttpDelete("DeleteClass")]
        public ActionResult DeleteClass([FromBody] ClassInfo classInfo)
        {
            if(BusControls.Instance.DeleteClass(classInfo.MaLop))
                return new JsonResult(new APIResponse<object>("Deleted"));
            return new JsonResult(new APIResponse<object>(200));
        }
    }
}