using System;
namespace dependencyInversion
{
    public class PaymentDataClient
    {
        private InMemoryCache<Payment[]> _cache;

        public PaymentDataClient(InMemoryCache<Payment[]> cache)
        {
            _cache = cache;
        }

        public Payment[] GetPayments()
        {

            return _cache.RetrieveValue("Payments");
        }

        public void PostPayment(decimal amount, string mopToken)
        {
            // do work
        }
    }

    //public class PaymentDataClient: IPaymentDataClient
    //{
    //    private InMemoryCache<Payment[]> _cache;

    //    public PaymentDataClient(InMemoryCache<Payment[]> cache)
    //    {
    //        _cache = cache;
    //    }

    //    public Payment[] GetPayments(DateTime dateRange)
    //    {
    //        // we do nothing with date range since this is a #basic 
    //        // data client
    //        return _cache.RetrieveValue("Payments");
    //    }

    //    // since the interface compels us to use recurring, but
    //    // this #basic data client doesn't do anything with it we can
    //    // default it to false
    //    public void PostPayment(decimal amount, string mopToken, bool recurring = false)
    //    {
    //        // do work
    //    }
    //}
}
