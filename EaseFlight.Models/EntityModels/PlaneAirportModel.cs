using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class PlaneAirportModel
    {
        #region Properties
        [Key]
        public int PlaneID { get; set; }
        public int AirportID { get; set; }
        public string DepartureOrArrival { get; set; }
        public virtual Airport Airport { get; set; }
        public virtual Plane Plane { get; set; }
        #endregion

        #region Functions
        public PlaneAirport GetModel()
        {
            var model = new PlaneAirport();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}