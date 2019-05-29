using System;
namespace dependencyInversion
{
    // the interface should be defined to support all concrete implementations.
    // this means the method signatures should conform to the tighter constraints;
    // i.e., date range, recurring, etc..

    public interface IPaymentDataClient
    {
        Payment[] GetPayments(DateTime dateRange);
        void PostPayment(decimal amount, string mopToken, bool recurring);
    }
}
