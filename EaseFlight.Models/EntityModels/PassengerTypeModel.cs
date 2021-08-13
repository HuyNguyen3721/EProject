using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class PassengerTypeModel
    {
        #region Properties
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        public Nullable<int> Discount { get; set; }
        #endregion

        #region Functions
        public PassengerType GetModel()
        {
            var model = new PassengerType();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}
