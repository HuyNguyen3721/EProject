using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class SeatClassModel
    {
        #region Properties
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        public virtual ICollection<PlaneSeatClass> PlaneSeatClasses { get; set; }
        #endregion

        #region Functions
        public SeatClass GetModel()
        {
            var model = new SeatClass();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}
