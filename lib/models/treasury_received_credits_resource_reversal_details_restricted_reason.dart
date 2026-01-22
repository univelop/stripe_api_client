// ignore_for_file: type=lint
/// auto generated
///  Set if a ReceivedCredit cannot be reversed.
enum TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason {
  alreadyReversed('already_reversed'),
  deadlinePassed('deadline_passed'),
  networkRestricted('network_restricted'),
  other('other'),
  sourceFlowRestricted('source_flow_restricted');

  const TreasuryReceivedCreditsResourceReversalDetailsRestrictedReason(
      this.value);
  final String value;
}
