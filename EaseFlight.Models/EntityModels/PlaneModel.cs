using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class PlaneModel
    {
        #region Properties
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        public string Airline { get; set; }
        public Nullable<int> SeatMapID { get; set; }
        public string Status { get; set; }
        public virtual ICollection<Flight> Flights { get; set; }
        public virtual SeatMap SeatMap { get; set; }
        public virtual ICollection<PlaneAirport> PlaneAirports { get; set; }
        public virtual ICollection<PlaneSeatClass> PlaneSeatClasses { get; set; }
        #endregion

        #region Functions
        public Plane GetModel()
        {
            var model = new Plane();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}
