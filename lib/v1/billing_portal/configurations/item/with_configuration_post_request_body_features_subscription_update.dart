// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_update_billing_cycle_anchor.dart';
import './with_configuration_post_request_body_features_subscription_update_default_allowed_updates.dart';
import './with_configuration_post_request_body_features_subscription_update_products.dart';
import './with_configuration_post_request_body_features_subscription_update_proration_behavior.dart';
import './with_configuration_post_request_body_features_subscription_update_schedule_at_period_end.dart';
import './with_configuration_post_request_body_features_subscription_update_trial_update_behavior.dart';

/// auto generated
class WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_cycle_anchor property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor?
      billingCycleAnchor;

  ///  The default_allowed_updates property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates?
      defaultAllowedUpdates;

  ///  The enabled property
  bool? enabled;

  ///  The products property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts? products;

  ///  The proration_behavior property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior?
      prorationBehavior;

  ///  The schedule_at_period_end property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd?
      scheduleAtPeriodEnd;

  ///  The trial_update_behavior property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior?
      trialUpdateBehavior;

  /// Instantiates a new [WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate] and sets the default values.
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFeaturesSubscriptionUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_cycle_anchor'] = (node) => billingCycleAnchor = node.getEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor>(
        (stringValue) =>
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_allowed_updates'] = (node) =>
        defaultAllowedUpdates = node.getObjectValue<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
                .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['products'] = (node) => products = node.getObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts>(
        WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts
            .createFromDiscriminatorValue);
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior>(
        (stringValue) =>
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['schedule_at_period_end'] = (node) => scheduleAtPeriodEnd =
        node.getObjectValue<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
                .createFromDiscriminatorValue);
    deserializerMap[
        'trial_update_behavior'] = (node) => trialUpdateBehavior = node.getEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior>(
        (stringValue) =>
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates>(
        'default_allowed_updates', defaultAllowedUpdates);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProducts>(
        'products', products);
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd>(
        'schedule_at_period_end', scheduleAtPeriodEnd);
    writer.writeEnumValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior>(
        'trial_update_behavior', trialUpdateBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
