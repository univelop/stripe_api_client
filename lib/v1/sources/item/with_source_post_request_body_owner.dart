// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_source_post_request_body_owner_address.dart';

/// auto generated
/// Information about the owner of the payment instrument that may be used or required by particular source types.
class WithSourcePostRequestBodyOwner implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  WithSourcePostRequestBodyOwnerAddress? address;

  ///  The email property
  String? email;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [WithSourcePostRequestBodyOwner] and sets the default values.
  WithSourcePostRequestBodyOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSourcePostRequestBodyOwner createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSourcePostRequestBodyOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<WithSourcePostRequestBodyOwnerAddress>(
            WithSourcePostRequestBodyOwnerAddress.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithSourcePostRequestBodyOwnerAddress>(
        'address', address);
    writer.writeStringValue('email', email);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
