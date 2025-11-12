using CoreAspNet.Models.Data;
using System;
using System.Collections.Generic;
using System.Text;

namespace CoreAspNet.Models.IRepository
{
    public interface IAspNetUsersRepository
    {
        void AddUser(AspNetUsers users);
        AspNetUsers GetInfo(string id);
        int DeleteUser(string id);

        int UpdateUser(AspNetUsers users);


    }
}
