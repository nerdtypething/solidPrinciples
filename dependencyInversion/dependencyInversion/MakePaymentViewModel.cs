using System;

namespace dependencyInversion
{
    public class MakePaymentViewModel
    {
        private PaymentDataClient _dataClient;

        public MakePaymentViewModel(PaymentDataClient dataClient)
        {
            _dataClient = dataClient;
        }

        public void SubmitPayment(decimal amount, string mopToken)
        {
            // does stuff
          
        }

        public Payment[] GetPayments()
        {
            return _dataClient.GetPayments();
        }
    }

    //public class MakePaymentViewModel: IMakePaymentViewModel
    //{
    //    private IPaymentDataClient _dataClient;

    //    public MakePaymentViewModel(IPaymentDataClient dataClient)
    //    {
    //        _dataClient = dataClient;
    //    }

    //    public void SubmitPayment(decimal amount, string mopToken)
    //    {
    //        _dataClient.PostPayment(amount, mopToken);

    //    }

    //    public Payment[] GetPayments()
    //    {
    //        return _dataClient.GetPayments();
    //    }
    //}
}
