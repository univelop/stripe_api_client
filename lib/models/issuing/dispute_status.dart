// ignore_for_file: type=lint
/// auto generated
///  Current status of the dispute.
enum DisputeStatus {
  expired('expired'),
  lost('lost'),
  submitted('submitted'),
  unsubmitted('unsubmitted'),
  won('won');

  const DisputeStatus(this.value);
  final String value;
}
