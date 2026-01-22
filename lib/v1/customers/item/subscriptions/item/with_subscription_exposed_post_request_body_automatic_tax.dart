// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_automatic_tax_liability.dart';

/// auto generated
/// Automatic tax settings for this subscription. We recommend you only include this parameter when the existing value is being changed.
class WithSubscriptionExposedPostRequestBodyAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The liability property
  WithSubscriptionExposedPostRequestBodyAutomaticTaxLiability? liability;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyAutomaticTax] and sets the default values.
  WithSubscriptionExposedPostRequestBodyAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyAutomaticTax
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAutomaticTaxLiability>(
        WithSubscriptionExposedPostRequestBodyAutomaticTaxLiability
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAutomaticTaxLiability>(
        'liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
