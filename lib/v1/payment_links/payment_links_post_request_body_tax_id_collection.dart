// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_tax_id_collection_required.dart';

/// auto generated
/// Controls tax ID collection during checkout.
class PaymentLinksPostRequestBodyTaxIdCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The required property
  PaymentLinksPostRequestBodyTaxIdCollectionRequired? required_;

  /// Instantiates a new [PaymentLinksPostRequestBodyTaxIdCollection] and sets the default values.
  PaymentLinksPostRequestBodyTaxIdCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyTaxIdCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentLinksPostRequestBodyTaxIdCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['required'] = (node) => required_ =
        node.getEnumValue<PaymentLinksPostRequestBodyTaxIdCollectionRequired>(
            (stringValue) => PaymentLinksPostRequestBodyTaxIdCollectionRequired
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeEnumValue<PaymentLinksPostRequestBodyTaxIdCollectionRequired>(
        'required', required_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
