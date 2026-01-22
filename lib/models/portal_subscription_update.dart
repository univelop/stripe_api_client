// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_resource_schedule_update_at_period_end.dart';
import './portal_subscription_update_billing_cycle_anchor.dart';
import './portal_subscription_update_default_allowed_updates.dart';
import './portal_subscription_update_product.dart';
import './portal_subscription_update_proration_behavior.dart';
import './portal_subscription_update_trial_update_behavior.dart';

/// auto generated
class PortalSubscriptionUpdate implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Determines the value to use for the billing cycle anchor on subscription updates. Valid values are `now` or `unchanged`, and the default value is `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
  PortalSubscriptionUpdateBillingCycleAnchor? billingCycleAnchor;

  ///  The types of subscription updates that are supported for items listed in the `products` attribute. When empty, subscriptions are not updateable.
  Iterable<PortalSubscriptionUpdateDefaultAllowedUpdates>?
      defaultAllowedUpdates;

  ///  Whether the feature is enabled.
  bool? enabled;

  ///  The list of up to 10 products that support subscription updates.
  Iterable<PortalSubscriptionUpdateProduct>? products;

  ///  Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
  PortalSubscriptionUpdateProrationBehavior? prorationBehavior;

  ///  The schedule_at_period_end property
  PortalResourceScheduleUpdateAtPeriodEnd? scheduleAtPeriodEnd;

  ///  Determines how handle updates to trialing subscriptions. Valid values are `end_trial` and `continue_trial`. Defaults to a value of `end_trial` if you don't set it during creation.
  PortalSubscriptionUpdateTrialUpdateBehavior? trialUpdateBehavior;

  /// Instantiates a new [PortalSubscriptionUpdate] and sets the default values.
  PortalSubscriptionUpdate() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalSubscriptionUpdate createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalSubscriptionUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_cycle_anchor'] = (node) => billingCycleAnchor =
        node.getEnumValue<PortalSubscriptionUpdateBillingCycleAnchor>(
            (stringValue) => PortalSubscriptionUpdateBillingCycleAnchor.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_allowed_updates'] = (node) =>
        defaultAllowedUpdates = node.getCollectionOfEnumValues<
                PortalSubscriptionUpdateDefaultAllowedUpdates>(
            (stringValue) => PortalSubscriptionUpdateDefaultAllowedUpdates
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['products'] = (node) => products =
        node.getCollectionOfObjectValues<PortalSubscriptionUpdateProduct>(
            PortalSubscriptionUpdateProduct.createFromDiscriminatorValue);
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<PortalSubscriptionUpdateProrationBehavior>(
            (stringValue) => PortalSubscriptionUpdateProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['schedule_at_period_end'] = (node) => scheduleAtPeriodEnd =
        node.getObjectValue<PortalResourceScheduleUpdateAtPeriodEnd>(
            PortalResourceScheduleUpdateAtPeriodEnd
                .createFromDiscriminatorValue);
    deserializerMap['trial_update_behavior'] = (node) => trialUpdateBehavior =
        node.getEnumValue<PortalSubscriptionUpdateTrialUpdateBehavior>(
            (stringValue) => PortalSubscriptionUpdateTrialUpdateBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<PortalSubscriptionUpdateBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeCollectionOfEnumValues<
            PortalSubscriptionUpdateDefaultAllowedUpdates>(
        'default_allowed_updates', defaultAllowedUpdates, (e) => e?.value);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeCollectionOfObjectValues<PortalSubscriptionUpdateProduct>(
        'products', products);
    writer.writeEnumValue<PortalSubscriptionUpdateProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<PortalResourceScheduleUpdateAtPeriodEnd>(
        'schedule_at_period_end', scheduleAtPeriodEnd);
    writer.writeEnumValue<PortalSubscriptionUpdateTrialUpdateBehavior>(
        'trial_update_behavior', trialUpdateBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
