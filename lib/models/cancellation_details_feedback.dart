// ignore_for_file: type=lint
/// auto generated
///  The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
enum CancellationDetailsFeedback {
  customerService('customer_service'),
  lowQuality('low_quality'),
  missingFeatures('missing_features'),
  other('other'),
  switchedService('switched_service'),
  tooComplex('too_complex'),
  tooExpensive('too_expensive'),
  unused('unused');

  const CancellationDetailsFeedback(this.value);
  final String value;
}
