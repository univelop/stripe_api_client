// ignore_for_file: type=lint
/// auto generated
///  The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
enum SubscriptionsResourcePauseCollectionBehavior {
  keepAsDraft('keep_as_draft'),
  markUncollectible('mark_uncollectible'),
  void_('void');

  const SubscriptionsResourcePauseCollectionBehavior(this.value);
  final String value;
}
