// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_product_resource_postal_address.dart';

/// auto generated
class TaxProductResourceShipFromDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  TaxProductResourcePostalAddress? address;

  /// Instantiates a new [TaxProductResourceShipFromDetails] and sets the default values.
  TaxProductResourceShipFromDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxProductResourceShipFromDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxProductResourceShipFromDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<TaxProductResourcePostalAddress>(
            TaxProductResourcePostalAddress.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TaxProductResourcePostalAddress>(
        'address', address);
    writer.writeAdditionalData(additionalData);
  }
}
