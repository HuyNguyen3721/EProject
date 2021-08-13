using EaseFlight.Common.Utilities;
using EaseFlight.DAL.Entities;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace EaseFlight.Models.EntityModels
{
    public class AccountTypeModel
    {
        #region Properties
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        public string Roles { get; set; }
        public virtual ICollection<Account> Accounts { get; set; }
        #endregion

        #region Functions
        public AccountType GetModel()
        {
            var model = new AccountType();
            CommonMethods.CopyObjectProperties(this, model);

            return model;
        }
        #endregion
    }
}
