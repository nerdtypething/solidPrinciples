using System;
using System.Collections.Generic;

namespace dependencyInversion
{
    public class InMemoryCache<T>
    {
        public void StoreValue(string key, T value)
        {
            // store it for real
        }

        public T RetrieveValue(string key)
        {
            // todo: do it for real, but for now...

            return default(T);
        }
    }
}
