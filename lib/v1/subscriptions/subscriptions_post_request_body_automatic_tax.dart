// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_automatic_tax_liability.dart';

/// auto generated
/// Automatic tax settings for this subscription.
class SubscriptionsPostRequestBodyAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The liability property
  SubscriptionsPostRequestBodyAutomaticTaxLiability? liability;

  /// Instantiates a new [SubscriptionsPostRequestBodyAutomaticTax] and sets the default values.
  SubscriptionsPostRequestBodyAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyAutomaticTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsPostRequestBodyAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<SubscriptionsPostRequestBodyAutomaticTaxLiability>(
            SubscriptionsPostRequestBodyAutomaticTaxLiability
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<SubscriptionsPostRequestBodyAutomaticTaxLiability>(
        'liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
