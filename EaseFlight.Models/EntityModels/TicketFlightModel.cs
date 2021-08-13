using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class TicketFlightModel
    {

        #region Properties
        [Key]
        public int TicketID { get; set; }
        public int FlightID { get; set; }
        public string SeatCode { get; set; }
        public Nullable<bool> RoundTrip { get; set; }
        public Nullable<int> Order { get; set; }
        public virtual Flight Flight { get; set; }
        public virtual Ticket Ticket { get; set; }
        #endregion

        #region Functions
        public TicketFlight GetModel()
        {
            var model = new TicketFlight();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}