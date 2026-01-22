// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
class Shipping implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  Address? address;

  ///  The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
  String? carrier;

  ///  Recipient name.
  String? name;

  ///  Recipient phone (including extension).
  String? phone;

  ///  The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
  String? trackingNumber;

  /// Instantiates a new [Shipping] and sets the default values.
  Shipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Shipping createFromDiscriminatorValue(ParseNode parseNode) {
    return Shipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['carrier'] = (node) => carrier = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['tracking_number'] =
        (node) => trackingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeStringValue('carrier', carrier);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeStringValue('tracking_number', trackingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
