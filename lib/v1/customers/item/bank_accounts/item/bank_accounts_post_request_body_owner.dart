// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './bank_accounts_post_request_body_owner_address.dart';

/// auto generated
class BankAccountsPostRequestBodyOwner
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address property
  BankAccountsPostRequestBodyOwnerAddress? address;

  ///  The email property
  String? email;

  ///  The name property
  String? name;

  ///  The phone property
  String? phone;

  /// Instantiates a new [BankAccountsPostRequestBodyOwner] and sets the default values.
  BankAccountsPostRequestBodyOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BankAccountsPostRequestBodyOwner createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BankAccountsPostRequestBodyOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getObjectValue<
            BankAccountsPostRequestBodyOwnerAddress>(
        BankAccountsPostRequestBodyOwnerAddress.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BankAccountsPostRequestBodyOwnerAddress>(
        'address', address);
    writer.writeStringValue('email', email);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone', phone);
    writer.writeAdditionalData(additionalData);
  }
}
