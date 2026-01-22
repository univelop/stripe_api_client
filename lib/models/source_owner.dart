// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';

/// auto generated
class SourceOwner implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Owner's address.
  Address? address;

  ///  Owner's email address.
  String? email;

  ///  Owner's full name.
  String? name;

  ///  Owner's phone number (including extension).
  String? phone;

  ///  Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  Address? verifiedAddress;

  ///  Verified owner's email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? verifiedEmail;

  ///  Verified owner's full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? verifiedName;

  ///  Verified owner's phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
  String? verifiedPhone;

  /// Instantiates a new [SourceOwner] and sets the default values.
  SourceOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceOwner createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['verified_address'] = (node) => verifiedAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['verified_email'] =
        (node) => verifiedEmail = node.getStringValue();
    deserializerMap['verified_name'] =
        (node) => verifiedName = node.getStringValue();
    deserializerMap['verified_phone'] =
        (node) => verifiedPhone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeStringValue('email', email);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeObjectValue<Address>('verified_address', verifiedAddress);
    writer.writeStringValue('verified_email', verifiedEmail);
    writer.writeStringValue('verified_name', verifiedName);
    writer.writeStringValue('verified_phone', verifiedPhone);
    writer.writeAdditionalData(additionalData);
  }
}
