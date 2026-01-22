// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_subscription_data_trial_settings_end_behavior_missing_payment_method.dart';

/// auto generated
class PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehavior
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The missing_payment_method property
  PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod?
      missingPaymentMethod;

  /// Instantiates a new [PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehavior] and sets the default values.
  PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehavior()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehavior
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehavior();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'missing_payment_method'] = (node) => missingPaymentMethod = node.getEnumValue<
            PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod>(
        (stringValue) =>
            PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod
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
            PaymentLinksPostRequestBodySubscriptionDataTrialSettingsEndBehaviorMissingPaymentMethod>(
        'missing_payment_method', missingPaymentMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
