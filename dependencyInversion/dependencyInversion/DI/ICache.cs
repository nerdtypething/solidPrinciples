using System;

namespace dependencyInversion
{
    public interface ICache<T>
    {
        void StoreValue(string key, T value);
        T RetrieveValue(string key);
    }
}
