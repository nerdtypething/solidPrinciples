using System;
namespace dependencyInversion
{
    public interface IMakePaymentViewModel
    {
        void SubmitPayment(decimal amount, string mopToken);
        Payment[] GetPayments();
    }
}
