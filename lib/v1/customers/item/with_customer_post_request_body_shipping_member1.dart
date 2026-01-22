// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_shipping_member1_address.dart';

/// auto generated
class WithCustomerPostRequestBodyShippingMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithCustomerPostRequestBodyShippingMember1Address? address;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [WithCustomerPostRequestBodyShippingMember1] and sets the default values.
  WithCustomerPostRequestBodyShippingMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyShippingMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithCustomerPostRequestBodyShippingMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<WithCustomerPostRequestBodyShippingMember1Address>(
            WithCustomerPostRequestBodyShippingMember1Address
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCustomerPostRequestBodyShippingMember1Address>(
        'address', address);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
