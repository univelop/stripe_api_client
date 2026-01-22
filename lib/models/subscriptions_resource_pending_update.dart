// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_item.dart';

/// auto generated
/// Pending Updates store the changes pending from a previous update that will be appliedto the Subscription upon successful payment.
class SubscriptionsResourcePendingUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  If the update is applied, determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
  int? billingCycleAnchor;

  ///  The point after which the changes reflected by this update will be discarded and no longer applied.
  int? expiresAt;

  ///  List of subscription items, each with an attached plan, that will be set if the update is applied.
  Iterable<SubscriptionItem>? subscriptionItems;

  ///  Unix timestamp representing the end of the trial period the customer will get before being charged for the first time, if the update is applied.
  int? trialEnd;

  ///  Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://docs.stripe.com/billing/subscriptions/trials) to learn more.
  bool? trialFromPlan;

  /// Instantiates a new [SubscriptionsResourcePendingUpdate] and sets the default values.
  SubscriptionsResourcePendingUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourcePendingUpdate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsResourcePendingUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_cycle_anchor'] =
        (node) => billingCycleAnchor = node.getIntValue();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['subscription_items'] = (node) => subscriptionItems =
        node.getCollectionOfObjectValues<SubscriptionItem>(
            SubscriptionItem.createFromDiscriminatorValue);
    deserializerMap['trial_end'] = (node) => trialEnd = node.getIntValue();
    deserializerMap['trial_from_plan'] =
        (node) => trialFromPlan = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('billing_cycle_anchor', billingCycleAnchor);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeCollectionOfObjectValues<SubscriptionItem>(
        'subscription_items', subscriptionItems);
    writer.writeIntValue('trial_end', trialEnd);
    writer.writeBoolValue('trial_from_plan', value: trialFromPlan);
    writer.writeAdditionalData(additionalData);
  }
}
