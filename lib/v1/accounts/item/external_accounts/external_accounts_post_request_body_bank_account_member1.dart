// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './external_accounts_post_request_body_bank_account_member1_account_holder_type.dart';
import './external_accounts_post_request_body_bank_account_member1_account_type.dart';
import './external_accounts_post_request_body_bank_account_member1_documents.dart';
import './external_accounts_post_request_body_bank_account_member1_object.dart';

/// auto generated
class ExternalAccountsPostRequestBodyBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_name property
  String? accountHolderName;

  ///  The account_holder_type property
  ExternalAccountsPostRequestBodyBankAccountMember1AccountHolderType?
      accountHolderType;

  ///  The account_number property
  String? accountNumber;

  ///  The account_type property
  ExternalAccountsPostRequestBodyBankAccountMember1AccountType? accountType;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country property
  String? country;

  ///  The currency property
  String? currency;

  ///  The documents property
  ExternalAccountsPostRequestBodyBankAccountMember1Documents? documents;

  ///  The object property
  ExternalAccountsPostRequestBodyBankAccountMember1Object? object;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [ExternalAccountsPostRequestBodyBankAccountMember1] and sets the default values.
  ExternalAccountsPostRequestBodyBankAccountMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ExternalAccountsPostRequestBodyBankAccountMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ExternalAccountsPostRequestBodyBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap[
        'account_holder_type'] = (node) => accountHolderType = node.getEnumValue<
            ExternalAccountsPostRequestBodyBankAccountMember1AccountHolderType>(
        (stringValue) =>
            ExternalAccountsPostRequestBodyBankAccountMember1AccountHolderType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['account_type'] = (node) => accountType = node.getEnumValue<
            ExternalAccountsPostRequestBodyBankAccountMember1AccountType>(
        (stringValue) =>
            ExternalAccountsPostRequestBodyBankAccountMember1AccountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['documents'] = (node) => documents = node.getObjectValue<
            ExternalAccountsPostRequestBodyBankAccountMember1Documents>(
        ExternalAccountsPostRequestBodyBankAccountMember1Documents
            .createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<ExternalAccountsPostRequestBodyBankAccountMember1Object>(
            (stringValue) =>
                ExternalAccountsPostRequestBodyBankAccountMember1Object.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeEnumValue<
            ExternalAccountsPostRequestBodyBankAccountMember1AccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeEnumValue<
            ExternalAccountsPostRequestBodyBankAccountMember1AccountType>(
        'account_type', accountType, (e) => e?.value);
    writer.writeStringValue('country', country);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<
            ExternalAccountsPostRequestBodyBankAccountMember1Documents>(
        'documents', documents);
    writer.writeEnumValue<
            ExternalAccountsPostRequestBodyBankAccountMember1Object>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
