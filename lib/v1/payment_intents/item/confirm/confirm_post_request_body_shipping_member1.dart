// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_shipping_member1_address.dart';

/// auto generated
class ConfirmPostRequestBodyShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  ConfirmPostRequestBodyShippingMember1Address? address;

  ///  The carrier property
  String? carrier;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  ///  The tracking_number property
  String? trackingNumber;

  /// Instantiates a new [ConfirmPostRequestBodyShippingMember1] and sets the default values.
  ConfirmPostRequestBodyShippingMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyShippingMember1 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBodyShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<ConfirmPostRequestBodyShippingMember1Address>(
            ConfirmPostRequestBodyShippingMember1Address
                .createFromDiscriminatorValue);
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
    writer.writeObjectValue<ConfirmPostRequestBodyShippingMember1Address>(
        'address', address);
    writer.writeStringValue('carrier', carrier);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeStringValue('tracking_number', trackingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
