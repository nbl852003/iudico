﻿using System;

namespace IUDICO.UM.Models.Storage
{
    public enum UMStorageType
    {
        Database = 1,
        FileSystem,
        Mixed
    }

    public class UMStorageFactory
    {
        public static IUMStorage CreateStorage(UMStorageType type)
        {
            switch (type)
            {
                case UMStorageType.Database:
                    return new DatabaseUMStorage();
                case UMStorageType.FileSystem:
                    throw new NotImplementedException();
                case UMStorageType.Mixed:
                    throw new NotImplementedException();
                default:
                    throw new Exception("Can't create storage of such type");
            }
        }
    }
}