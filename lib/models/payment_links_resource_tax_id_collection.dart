// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_resource_tax_id_collection_required.dart';

/// auto generated
class PaymentLinksResourceTaxIdCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Indicates whether tax ID collection is enabled for the session.
  bool? enabled;

  ///  The required property
  PaymentLinksResourceTaxIdCollectionRequired? required_;

  /// Instantiates a new [PaymentLinksResourceTaxIdCollection] and sets the default values.
  PaymentLinksResourceTaxIdCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksResourceTaxIdCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksResourceTaxIdCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['required'] = (node) => required_ =
        node.getEnumValue<PaymentLinksResourceTaxIdCollectionRequired>(
            (stringValue) => PaymentLinksResourceTaxIdCollectionRequired.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeEnumValue<PaymentLinksResourceTaxIdCollectionRequired>(
        'required', required_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
