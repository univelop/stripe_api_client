// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_source_order_shipping_address.dart';

/// auto generated
class WithSourcePostRequestBodySourceOrderShipping
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithSourcePostRequestBodySourceOrderShippingAddress? address;

  ///  The carrier property
  String? carrier;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  ///  The tracking_number property
  String? trackingNumber;

  /// Instantiates a new [WithSourcePostRequestBodySourceOrderShipping] and sets the default values.
  WithSourcePostRequestBodySourceOrderShipping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBodySourceOrderShipping
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSourcePostRequestBodySourceOrderShipping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node
        .getObjectValue<WithSourcePostRequestBodySourceOrderShippingAddress>(
            WithSourcePostRequestBodySourceOrderShippingAddress
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
    writer
        .writeObjectValue<WithSourcePostRequestBodySourceOrderShippingAddress>(
            'address', address);
    writer.writeStringValue('carrier', carrier);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeStringValue('tracking_number', trackingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
