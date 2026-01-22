// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_ownership_object.dart';
import './account_ownership_owners.dart';

/// auto generated
/// Describes a snapshot of the owners of an account at a particular point in time.
class AccountOwnership implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  AccountOwnershipObject? object;

  ///  A paginated list of owners for this account.
  AccountOwnershipOwners? owners;

  /// Instantiates a new [AccountOwnership] and sets the default values.
  AccountOwnership() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountOwnership createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountOwnership();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountOwnershipObject>((stringValue) =>
            AccountOwnershipObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['owners'] = (node) => owners =
        node.getObjectValue<AccountOwnershipOwners>(
            AccountOwnershipOwners.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<AccountOwnershipObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<AccountOwnershipOwners>('owners', owners);
    writer.writeAdditionalData(additionalData);
  }
}
