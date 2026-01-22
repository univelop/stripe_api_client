// ignore_for_file: type=lint
/// auto generated
///  The current status of a dispute. Possible values include:`warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `won`, `lost`, or `prevented`.
enum DisputeStatus {
  lost('lost'),
  needsResponse('needs_response'),
  prevented('prevented'),
  underReview('under_review'),
  warningClosed('warning_closed'),
  warningNeedsResponse('warning_needs_response'),
  warningUnderReview('warning_under_review'),
  won('won');

  const DisputeStatus(this.value);
  final String value;
}
