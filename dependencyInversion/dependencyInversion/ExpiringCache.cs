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
}
