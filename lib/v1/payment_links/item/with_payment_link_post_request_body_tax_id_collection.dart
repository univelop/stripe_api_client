// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_tax_id_collection_required.dart';

/// auto generated
/// Controls tax ID collection during checkout.
class WithPaymentLinkPostRequestBodyTaxIdCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The enabled property
  bool? enabled;

  ///  The required property
  WithPaymentLinkPostRequestBodyTaxIdCollectionRequired? required_;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyTaxIdCollection] and sets the default values.
  WithPaymentLinkPostRequestBodyTaxIdCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyTaxIdCollection
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyTaxIdCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['required'] = (node) => required_ = node
        .getEnumValue<WithPaymentLinkPostRequestBodyTaxIdCollectionRequired>(
            (stringValue) =>
                WithPaymentLinkPostRequestBodyTaxIdCollectionRequired.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer
        .writeEnumValue<WithPaymentLinkPostRequestBodyTaxIdCollectionRequired>(
            'required', required_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
