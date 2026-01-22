// ignore_for_file: type=lint
/// auto generated
///  Probability that this transaction can be disputed in the event of fraud. Assessed by comparing the characteristics of the authorization to card network rules.
enum AuthorizationsPostRequestBodyFraudDisputabilityLikelihood {
  neutral('neutral'),
  unknown('unknown'),
  veryLikely('very_likely'),
  veryUnlikely('very_unlikely');

  const AuthorizationsPostRequestBodyFraudDisputabilityLikelihood(this.value);
  final String value;
}
