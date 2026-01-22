// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_update_billing_cycle_anchor.dart';
import './configurations_post_request_body_features_subscription_update_default_allowed_updates.dart';
import './configurations_post_request_body_features_subscription_update_products.dart';
import './configurations_post_request_body_features_subscription_update_proration_behavior.dart';
import './configurations_post_request_body_features_subscription_update_schedule_at_period_end.dart';
import './configurations_post_request_body_features_subscription_update_trial_update_behavior.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_cycle_anchor property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor?
      billingCycleAnchor;

  ///  The default_allowed_updates property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates?
      defaultAllowedUpdates;

  ///  The enabled property
  bool? enabled;

  ///  The products property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts? products;

  ///  The proration_behavior property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior?
      prorationBehavior;

  ///  The schedule_at_period_end property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd?
      scheduleAtPeriodEnd;

  ///  The trial_update_behavior property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior?
      trialUpdateBehavior;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesSubscriptionUpdate();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_cycle_anchor'] = (node) => billingCycleAnchor = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['default_allowed_updates'] = (node) =>
        defaultAllowedUpdates = node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates
                .createFromDiscriminatorValue);
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['products'] = (node) => products = node.getObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts>(
        ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts
            .createFromDiscriminatorValue);
    deserializerMap[
        'proration_behavior'] = (node) => prorationBehavior = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['schedule_at_period_end'] = (node) => scheduleAtPeriodEnd =
        node.getObjectValue<
                ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd>(
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
                .createFromDiscriminatorValue);
    deserializerMap[
        'trial_update_behavior'] = (node) => trialUpdateBehavior = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior
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
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateBillingCycleAnchor>(
        'billing_cycle_anchor', billingCycleAnchor, (e) => e?.value);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateDefaultAllowedUpdates>(
        'default_allowed_updates', defaultAllowedUpdates);
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProducts>(
        'products', products);
    writer.writeEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd>(
        'schedule_at_period_end', scheduleAtPeriodEnd);
    writer.writeEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateTrialUpdateBehavior>(
        'trial_update_behavior', trialUpdateBehavior, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
