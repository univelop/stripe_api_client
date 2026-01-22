// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_external_accounts_data.dart';
import './account_external_accounts_object.dart';

/// auto generated
/// External accounts (bank accounts and debit cards) currently attached to this account. External accounts are only returned for requests where `controller[is_controller]` is true.
class AccountExternalAccounts implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
  Iterable<AccountExternalAccountsData>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  AccountExternalAccountsObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [AccountExternalAccounts] and sets the default values.
  AccountExternalAccounts() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountExternalAccounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountExternalAccounts();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data =
        node.getCollectionOfObjectValues<AccountExternalAccountsData>(
            AccountExternalAccountsData.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AccountExternalAccountsObject>((stringValue) =>
            AccountExternalAccountsObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<AccountExternalAccountsData>(
        'data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<AccountExternalAccountsObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
