﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IUDICO.Common.Models;
using IUDICO.Common.Models.Shared;

namespace IUDICO.Security.Models.Storages
{
    public interface IBanStorage
    {
        void AttachComputerToRoom(Computer computer, Room room);
        void DetachComputer(Computer computer);
        void BanComputer(Computer computer);
        void UnbanComputer(Computer computer);
        void BanRoom(Room room);
        void UnbanRoom(Room room);
        
        Computer GetComputer(string ipAddress);
        Room GetRoom(string name);
        IEnumerable<Computer> GetComputers();
        IEnumerable<Room> GetRooms();
        
        void CreateComputer(Computer computer);
        void CreateRoom(Room room);
        void DeleteComputer(Computer computer);
        void DeleteRoom(Room room);
        bool ifBanned(string ipAddress);
    }
}