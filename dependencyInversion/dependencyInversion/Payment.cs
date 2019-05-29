using System;
namespace dependencyInversion
{
    public struct Payment
    {
        public decimal Amount { get; set; }
        public DateTime PaymentDate { get; set; }
        public string MethodOfPayment { get; set; }
    }
}
