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
}
