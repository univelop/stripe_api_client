// ignore_for_file: type=lint
/// auto generated
///  Set if a ReceivedDebit can't be reversed.
enum TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason {
  alreadyReversed('already_reversed'),
  deadlinePassed('deadline_passed'),
  networkRestricted('network_restricted'),
  other('other'),
  sourceFlowRestricted('source_flow_restricted');

  const TreasuryReceivedDebitsResourceReversalDetailsRestrictedReason(
      this.value);
  final String value;
}
