// ignore_for_file: type=lint
/// auto generated
///  The type of fraud warning that most recently took place on this card. This field updates with every new fraud warning, so the value changes over time. If populated, cancel and reissue the card.
enum IssuingCardFraudWarningType {
  cardTestingExposure('card_testing_exposure'),
  fraudDisputeFiled('fraud_dispute_filed'),
  thirdPartyReported('third_party_reported'),
  userIndicatedFraud('user_indicated_fraud');

  const IssuingCardFraudWarningType(this.value);
  final String value;
}
