// ignore_for_file: type=lint
/// auto generated
///  The type of the microdeposit sent to the customer. Used to distinguish between different verification methods.
enum PaymentIntentNextActionVerifyWithMicrodepositsMicrodepositType {
  amounts('amounts'),
  descriptorCode('descriptor_code');

  const PaymentIntentNextActionVerifyWithMicrodepositsMicrodepositType(
      this.value);
  final String value;
}
