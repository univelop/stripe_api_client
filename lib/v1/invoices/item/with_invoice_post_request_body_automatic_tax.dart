// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_automatic_tax_liability.dart';

/// auto generated
/// Settings for automatic tax lookup for this invoice.
class WithInvoicePostRequestBodyAutomaticTax
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The liability property
  WithInvoicePostRequestBodyAutomaticTaxLiability? liability;

  /// Instantiates a new [WithInvoicePostRequestBodyAutomaticTax] and sets the default values.
  WithInvoicePostRequestBodyAutomaticTax() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyAutomaticTax createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithInvoicePostRequestBodyAutomaticTax();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['liability'] = (node) => liability =
        node.getObjectValue<WithInvoicePostRequestBodyAutomaticTaxLiability>(
            WithInvoicePostRequestBodyAutomaticTaxLiability
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeObjectValue<WithInvoicePostRequestBodyAutomaticTaxLiability>(
        'liability', liability);
    writer.writeAdditionalData(additionalData);
  }
}
