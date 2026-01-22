// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account.dart';
import './session_accounts_object.dart';

/// auto generated
/// The accounts that were collected as part of this Session.
class SessionAccounts implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Details about each object.
  Iterable<Account>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  SessionAccountsObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [SessionAccounts] and sets the default values.
  SessionAccounts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionAccounts createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionAccounts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<Account>(
            Account.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SessionAccountsObject>((stringValue) =>
            SessionAccountsObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<Account>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<SessionAccountsObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
