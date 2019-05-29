using System;
namespace dependencyInversion
{
    public class ExpiringCache<T>
    {
        public void StoreValue(string key, T value)
        {
            // store it for real
        }

        public T RetrieveValue(string key)
        {
            // different implementation to check if 
            // cache has expired, etc., etc..

            return default(T);
        }

        public bool IsExpired(string key)
        {
            return true;
        }
    }

    //public class ExpiringCache<T>: ICache<T>
    //{
    //    public void StoreValue(string key, T value)
    //    {
    //        // store it for real
    //    }

    //    public T RetrieveValue(string key)
    //    {
    //        // different implementation to check if 
    //        // cache has expired, etc., etc..

    //        if (IsExpired(key))
    //        {
    //            // go get it fresh
    //            return default(T);
    //        }
    //        else
    //        {
    //            // return cached value
    //            return default(T);
    //        }

    //    }

    //    // hide implementation methods that shouldn't matter
    //    // to calling code. 
    //    // encapsulation, encapsulation, encapsulation!!
    //    private bool IsExpired(string key)
    //    {
    //        return true;
    //    }
    //}
}
