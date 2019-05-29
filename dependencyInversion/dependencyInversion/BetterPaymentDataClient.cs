using System;
namespace dependencyInversion
{
    public class BetterPaymentDataClient
    {
        private InMemoryCache<Payment[]> _cache;

        public BetterPaymentDataClient(InMemoryCache<Payment[]> cache)
        {
            _cache = cache;
        }

        public Payment[] GetPayments(DateTime dateRange)
        {
            // do fancy logic determining where in the cache
            // the date range should live, etc., etc..
            return _cache.RetrieveValue("Payments");
        }

        public void PostPayment(decimal amount, string mopToken, bool recurring)
        {
            // do better work.
        }
    }

    //public class BetterPaymentDataClient: IPaymentDataClient
    //{
    //    private InMemoryCache<Payment[]> _cache;

    //    public BetterPaymentDataClient(InMemoryCache<Payment[]> cache)
    //    {
    //        _cache = cache;
    //    }

    //    public Payment[] GetPayments(DateTime dateRange)
    //    {
    //        // do fancy logic determining where in the cache
    //        // the date range should live, etc., etc..
    //        return _cache.RetrieveValue("Payments");
    //    }

    //    public void PostPayment(decimal amount, string mopToken, bool recurring)
    //    {
    //        // do better work.
    //    }
    //}
}
