// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_account_reference_account.dart';
import './connect_account_reference_type.dart';

/// auto generated
class ConnectAccountReference implements AdditionalDataHolder, Parsable {
  ///  The connected account being referenced when `type` is `account`.
  ConnectAccountReferenceAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Type of the account referenced.
  ConnectAccountReferenceType? type_;

  /// Instantiates a new [ConnectAccountReference] and sets the default values.
  ConnectAccountReference() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConnectAccountReference createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConnectAccountReference();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account =
        node.getObjectValue<ConnectAccountReferenceAccount>(
            ConnectAccountReferenceAccount.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ConnectAccountReferenceType>((stringValue) =>
            ConnectAccountReferenceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConnectAccountReferenceAccount>('account', account);
    writer.writeEnumValue<ConnectAccountReferenceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
