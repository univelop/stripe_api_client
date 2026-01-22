// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_owner_object.dart';

/// auto generated
/// Describes an owner of an account.
class AccountOwner implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The email address of the owner.
  String? email;

  ///  Unique identifier for the object.
  String? id;

  ///  The full name of the owner.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  AccountOwnerObject? object;

  ///  The ownership object that this owner belongs to.
  String? ownership;

  ///  The raw phone number of the owner.
  String? phone;

  ///  The raw physical address of the owner.
  String? rawAddress;

  ///  The timestamp of the refresh that updated this owner.
  int? refreshedAt;

  /// Instantiates a new [AccountOwner] and sets the default values.
  AccountOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountOwner createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountOwnerObject>((stringValue) =>
            AccountOwnerObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['ownership'] = (node) => ownership = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['raw_address'] =
        (node) => rawAddress = node.getStringValue();
    deserializerMap['refreshed_at'] =
        (node) => refreshedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('email', email);
    writer.writeStringValue('id', id);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<AccountOwnerObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('ownership', ownership);
    writer.writeStringValue('phone', phone);
    writer.writeStringValue('raw_address', rawAddress);
    writer.writeIntValue('refreshed_at', refreshedAt);
    writer.writeAdditionalData(additionalData);
  }
}
