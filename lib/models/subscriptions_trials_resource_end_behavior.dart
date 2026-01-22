// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_trials_resource_end_behavior_missing_payment_method.dart';

/// auto generated
/// Defines how a subscription behaves when a free trial ends.
class SubscriptionsTrialsResourceEndBehavior
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
  SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod?
      missingPaymentMethod;

  /// Instantiates a new [SubscriptionsTrialsResourceEndBehavior] and sets the default values.
  SubscriptionsTrialsResourceEndBehavior() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsTrialsResourceEndBehavior createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsTrialsResourceEndBehavior();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['missing_payment_method'] = (node) => missingPaymentMethod =
        node.getEnumValue<
                SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod>(
            (stringValue) =>
                SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod
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
            SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod>(
        'missing_payment_method', missingPaymentMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
