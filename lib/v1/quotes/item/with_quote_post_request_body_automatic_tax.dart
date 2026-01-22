// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_automatic_tax_liability.dart';

/// auto generated
/// Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
class WithQuotePostRequestBodyAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The liability property
  WithQuotePostRequestBodyAutomaticTaxLiability? liability;

  /// Instantiates a new [WithQuotePostRequestBodyAutomaticTax] and sets the default values.
  WithQuotePostRequestBodyAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodyAutomaticTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithQuotePostRequestBodyAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<WithQuotePostRequestBodyAutomaticTaxLiability>(
            WithQuotePostRequestBodyAutomaticTaxLiability
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<WithQuotePostRequestBodyAutomaticTaxLiability>(
        'liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
